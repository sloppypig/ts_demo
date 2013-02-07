class CreateAuths < ActiveRecord::Migration
  def change
    create_table :auths do |t|
      t.text :auth
      t.integer :topic_id
      t.decimal :weight
      t.timestamps
    end
  end
end
