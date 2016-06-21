class Documents::DownloadsController < ApplicationController
  before_action :set_document

  def show
    # TODO: what about disposition?
    redirect_to @document.file.file.authenticated_url
  end

  private

  def set_document
    @document = current_user.documents.find(params[:document_id])
  end
end
