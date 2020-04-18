class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :reviews
end
