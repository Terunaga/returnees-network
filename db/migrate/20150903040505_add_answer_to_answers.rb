class AddAnswerToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :answer, :text
    remove_column :answers, :comment, :text
  end
end
