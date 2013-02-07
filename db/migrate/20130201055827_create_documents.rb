class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :index
      t.text :file_path
      t.text :auth
      t.timestamps
    end
  end
end
