class ParamsController < ApplicationController
  def query_param
    message = params["message"]
    render json: {message: message.upcase}
  end
  def wildcard_param 
    message = params[:newmessg]
    render json: {message: message.upcase}
    
  end
  def code
    
    secretcode1 = params[:code1]
    secretcode2 = params[:code2]
    if secretcode1 == "octopus" && secretcode2 == "blobbies" 
      message = "You have passed the test... you may now be part of our secret society."
    else
      message = "You are either too cool or not cool enough to be part of our secret society."
    end
    render json: {message: message}
  end
end
