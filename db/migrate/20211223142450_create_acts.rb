class CreateActs < ActiveRecord::Migration[6.1]
  def change
    create_table :acts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
