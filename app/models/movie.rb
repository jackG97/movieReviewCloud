class Movie < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, presence: true
  validates :description, presence: true
  validates :movie_length, presence: true
  validates :rating, presence: true
  validates :director, presence: true
end
