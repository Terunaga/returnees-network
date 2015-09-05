class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.text :comment

      t.timestamps null: false
    end
  end
end
