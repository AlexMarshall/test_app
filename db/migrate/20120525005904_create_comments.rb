class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :micropost

      t.timestamps
    end
    add_index :comments, :micropost_id
  end
end
