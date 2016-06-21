class Document < ActiveRecord::Base
  belongs_to :user

  delegate :email, to: :user, prefix: true, allow_nil: true

  mount_uploader :file, FileUploader
end
