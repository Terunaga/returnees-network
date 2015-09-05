class RenameTextToQuestions < ActiveRecord::Migration
  def up
    rename_column :questions, :text, :question
  end

  def down
    rename_column :questions, :question, :text
  end
end
