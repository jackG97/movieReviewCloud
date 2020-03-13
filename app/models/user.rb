class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :movies
  has_one :profile
  has_many :reviews, dependent: :destroy

  validates :encrypted_password, presence: true, length: {minimum: 6}
  validates :email, presence: true
  validates :firstname, presence: true
  validates :surname, presence: true
  validates :dateofbirth, presence: true

end
