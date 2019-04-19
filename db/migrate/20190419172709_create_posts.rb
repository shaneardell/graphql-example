class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string     :title, null: false
      t.text       :body
      t.boolean    :published, null: false, default: false
      t.belongs_to :user, foreign_keys: true
      t.timestamps
    end
  end
end

