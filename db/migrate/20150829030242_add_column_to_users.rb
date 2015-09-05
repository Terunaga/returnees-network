class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :family_name, :string
    add_column :users, :first_name, :string
    add_column :users, :family_name_kana, :string
    add_column :users, :first_name_kana, :string
    add_column :users, :nickname, :string
    add_column :users, :gender, :string
    add_column :users, :duration, :string
    add_column :users, :return_date, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :introduction, :text

    add_column :users, :study_field, :string

    add_column :users, :university_one, :string
    add_column :users, :university_two, :string
    add_column :users, :university_three, :string
    add_column :users, :university_four, :string
    add_column :users, :university_five, :string

    add_column :users, :faculty_one, :string
    add_column :users, :faculty_two, :string
    add_column :users, :faculty_three, :string
    add_column :users, :faculty_four, :string
    add_column :users, :faculty_five, :string




  end
end
