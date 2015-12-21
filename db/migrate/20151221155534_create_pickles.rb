class CreatePickles < ActiveRecord::Migration
  def change
    create_table :pickles do |t|
      t.string :category
      t.text :message

      t.timestamps null: false
    end
  end
end
