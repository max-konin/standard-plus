class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :author
      t.string :email
      t.boolean :published, default: false
      t.text :text

      t.timestamps null: false
    end
  end
end
