class TypeaheadInput < SimpleForm::Inputs::StringInput

  def input(wrapper_options = nil)
    search_input_options = merge_wrapper_options(options[:search_html] || {}, wrapper_options).merge(value: nil, autocorrect: false, name: nil)
    js = <<JS
    $(function(){
      $('##{input_id}_search')
                .bind('keypress keydown keyup', function (e) {
                    if (e.keyCode == 13) {
                        e.preventDefault();
                    }
                })
                .bind('typeahead:select', function (ev, suggestion) {
                    $(this).typeahead('val', null).blur();
                    var $valueHtml = $('##{input_id}_html');
                    $valueHtml.find('.selected-value').text(suggestion.#{typeahead_suggestion_label});
                    $valueHtml.show();
                    $('##{input_id}').val(suggestion.#{typeahead_suggestion_id});
                });
    });
    function clear_#{input_id}() {
      $('##{input_id}').val(null);
      $('##{input_id}_html').hide();
      var $typeahead = $('##{input_id}_search');
      $typeahead.closest('span.twitter-typeahead').show();
      $typeahead.focus().trigger('simple_form:clear');
    }
JS

    value_html_tag <<
        template.search_field_tag("#{input_id}_search", nil, search_input_options) <<
        @builder.hidden_field(attribute_name, value: value_id) << template.javascript_tag(js)
  end

  def value
    input_html_options.fetch(:value) { object.send(reflection_or_attribute_name) unless object.nil? }
  end

  def value_label
    return nil if value.nil?
    method = options[:label_method] || SimpleForm.collection_label_methods.find { |m| value.respond_to? m }
    if method.is_a? Proc
      method.call(value)
    elsif method.is_a? Symbol
      value.send(method)
    else
      method
    end
  end

  def value_id
    return nil if value.nil?
    method = options[:value_method] || SimpleForm.collection_value_methods.find { |m| value.respond_to? m }
    if method.is_a? Proc
      method.call(value)
    elsif method.is_a? Symbol
      value.send(method)
    else
      method
    end
  end

  def value_html_tag
    value_html = options.fetch(:value_html) do
      template.content_tag(:span, value_label, class: ['selected-value', options[:value_label_class]].reject(&:blank?).join(' '), style: 'padding: 5px 0; display: inline-block') << ' ' <<
          template.button_tag(type: :button, onclick: "clear_#{input_id}();", class: 'btn btn-flat btn-flat-default btn-sm') do
            # template.fa_icon(:times, class: 'text-danger')
          end
    end
    styles = ['padding: 2px 0;', 'margin: 0 0 7px;', 'min-height: 34px;']
    styles << 'display: none;' unless value.present?
    template.content_tag :div, id: "#{input_id}_html", style: styles.join(' ') do
      value_html
    end if value_html.present?
  end

  def typeahead_suggestion_label
    if options[:typeahead_suggestion_label].present?
      options[:typeahead_suggestion_label]
    elsif options[:label_method].present? && options[:label_method].is_a?(Symbol)
      options[:label_method]
    elsif reflection.present?
      SimpleForm.collection_label_methods.except(:to_s).find { |m| reflection.build.respond_to? m }
    else
      raise 'Could not determine typeahead suggestion label'
    end
  end

  def typeahead_suggestion_id
    options.fetch(:typeahead_suggestion_id, :id)
  end

  private
  def input_id(attribute = attribute_name)
    TagHelper.new(object_name, attribute, @builder).tag_id
  end

  class TagHelper < ActionView::Helpers::Tags::Base
    def tag_id
      if @template_object.try(:index).present? && !@object_name.include?("[#{@template_object.index}]")
        tag_id_with_index @template_object.index
      else
        super
      end
    end
  end
end
