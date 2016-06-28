class AddFileIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :file_id, :string
  end
end
