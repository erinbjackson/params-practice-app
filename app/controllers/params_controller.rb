class ParamsController < ApplicationController
  def query_param
    message = params["message"]
    render json: {message: message.upcase}
  end
  def wildcard_param 
    message = params[:newmessg]
    render json: {message: message.upcase}
    
  end
end
