class Api::V1::ApiController < ActionController::Base

  def respond_with_render(template, options={})
  options = {} if options.nil?
  respond_to do |format|
    format.json { render template, options.merge(content_type: 'application/json') }
    format.xml { render template, options.merge(content_type: 'application/xml') }
  end
end

end
