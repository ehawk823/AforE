class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :name, :title, :location, :top_specialties
  has_many :interests
  has_many :specialties
  mount_uploader :avatar, AvatarUploader


  def assign_specialties(specialties)
    if specialties.include?("1")
      self.specialties << Specialty.find_by_id(1)
    end
    if specialties.include?("2")
      self.specialties << Specialty.find_by_id(2)
    end
    if specialties.include?("3")
      self.specialties << Specialty.find_by_id(3)
    end
    if specialties.include?("4")
      self.specialties << Specialty.find_by_id(4)
    end
    self.save
  end

  def assign_interests(interests)
    if interests.include?("1")
      self.interests << Interest.find_by_id(1)
    end
    if interests.include?("2")
      self.interests << Interest.find_by_id(2)
    end
    if interests.include?("3")
      self.interests << Interest.find_by_id(3)
    end
    self.save
  end

end
