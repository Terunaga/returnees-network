class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :nickname, :gender, :duration, :return_date, :facebook, :twitter, :introduction, :study_field, :university_one, :university_two, :university_three, :university_four, :university_five, :faculty_one, :faculty_two, :faculty_three, :faculty_four, :faculty_five, :country, :avatar)
  end
end
