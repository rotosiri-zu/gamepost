class Game < ApplicationRecord
  mount_uploader :image, ImagesUploader
  belongs_to :user
  has_many :reviews
  has_many :pcgame
  has_many :videogame
  has_many :socialgame
  validates :image, :name, :platform, :genre, :text, presence: true
end
