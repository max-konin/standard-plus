class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :author
      t.string :email
      t.boolean :published
      t.text :text

      t.timestamps null: false
    end
  end
end
