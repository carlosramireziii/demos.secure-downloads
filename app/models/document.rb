class Document < ActiveRecord::Base
  belongs_to :user

  delegate :email, to: :user, prefix: true, allow_nil: true

  has_attached_file :file,
                    storage: :s3,
                    s3_credentials: Proc.new{|a| a.instance.s3_credentials },
                    s3_permissions: :private
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/

  def s3_credentials
    { bucket: ENV["AWS_BUCKET"], access_key_id: ENV["AWS_ACCESS_KEY_ID"], secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"] }
  end
end
