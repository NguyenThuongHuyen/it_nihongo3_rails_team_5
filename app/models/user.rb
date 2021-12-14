class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
        has_one_attached :avatar
  validates :name, presence: true
  validates :age, presence: true
  validate :correct_avatar_type

def correct_avatar_type
        if (avatar.attached? && !avatar.content_type.in?(%w(image/jpeg image/png)))
            errors.add(:avatar, 'must be a JPEG or PNG.')
        elsif avatar.attached? ==false
            errors.add(:avatar, 'must be attached.')
        end
    end
end
