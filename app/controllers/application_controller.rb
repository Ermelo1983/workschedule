class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :role, :department, :floor, :full_time  ])
    devise_parameter_sanitizer.permit(:create, keys: [:first_name, :last_name, :role, :department, :floor, :full_time  ])
  end

  def filter_from_params(collection, *columns)
      return collection if params[:q].blank?

      columns = columns.reject &:blank?
      expr = columns.collect do |column|
        column = "#{collection.table_name}.#{column}" if column.is_a? Symbol
        "#{column} ILIKE ?"
      end.join(' OR ')
      params[:q].split(/\s+/).each do |word|
        query = "%#{word.gsub(/([%_])/) { |s| "\\#{s}" }}%"
        collection = collection.where(expr, *([query] * columns.count))
      end
      collection
    end

end
