class ContactsController < ApplicationController
  def new
  end

  def thanks
    #ContactMailerWorker.perform_async(params[:email], params[:content]) if params[:content].present?
  end
end
