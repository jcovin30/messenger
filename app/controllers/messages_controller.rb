class MessagesController < ApplicationController
  def index  #GET
    render json: {:digestList => Message.pluck(:digest)}
  end

  def create  #POST

    coded =  Digest::SHA256.hexdigest params[:message]
    @message = Message.create({:message => params[:message] , :digest => coded})
    render json: @message.no_id

  end

  def show #GET
  
      @message = Message.find_by digest: params[:id]
      if @message.present?
        render json: @message.only_message
      else
        render json: {"err_msg" => "Message not found"}
      end
  end
end



