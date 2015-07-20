class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :preview
      t.text :text

      t.timestamps null: false
    end
  end
end
