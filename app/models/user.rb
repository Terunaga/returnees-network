class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :questions, ->{ order("created_at DESC") }
  has_many :answers, ->{ order("created_at DESC") }

  # paperclip
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :avatar, content_type: %w(image/jpeg image/jpg image/png)

  def name
    "#{family_name} #{first_name}"
  end

  def name_kana
    "#{family_name_kana} #{first_name_kana}"
  end

  def university
    "#{university_one} #{university_two} #{university_three} #{university_four} #{university_five}"
  end

  def faculty
    "#{faculty_one} #{faculty_two} #{faculty_three} #{faculty_four} #{faculty_five}"
  end

  def minimum_profile?
    family_name? && first_name? && family_name_kana? && first_name_kana? && nickname? && gender? && country? && duration? && return_date? && study_field? && university_one? && faculty_one?
  end

end
