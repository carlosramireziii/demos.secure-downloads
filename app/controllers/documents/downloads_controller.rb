class Documents::DownloadsController < ApplicationController
  before_action :set_document

  def show
    redirect_to Refile.attachment_url(@document, :file)
  end

  private

  def set_document
    @document = current_user.documents.find(params[:document_id])
  end
end
