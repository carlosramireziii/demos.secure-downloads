class Documents::DownloadsController < ApplicationController
  before_action :set_document

  def show
    redirect_to @document.file.expiring_url(10)
  end

  private

  def set_document
    @document = current_user.documents.find(params[:document_id])
  end
end
