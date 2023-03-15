class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  private

  

  def render_not_found_response
    @model_name = controller_name.classify
  puts "--------"
  puts @model_name
  puts "--------"
    render json: { error: "#{@model_name} not found" }, status: :not_found
  end
end
