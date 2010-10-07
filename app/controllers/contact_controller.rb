class ContactController < ApplicationController
  def index
  end

  def create
    Notifier.deliver_notification(params[:contact])
    render :text => "Message Sent!"
  end
end
