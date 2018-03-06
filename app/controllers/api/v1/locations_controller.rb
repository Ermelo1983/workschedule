class Api::V1::LocationsController < Api::V1::ApiController
  include ActionController::Head
    include ActionController::Rendering
    include ActionController::MimeResponds
    include ActionController::StrongParameters
    include ActionController::UrlFor
    include ActionController::Helpers

  def index
    respond_with_render :index
  end
  
  def show
    respond_with_render :show
  end

end
