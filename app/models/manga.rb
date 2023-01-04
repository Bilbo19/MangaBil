class Manga < ApplicationRecord
  has_many :users

  validates :title, presence: true
  validates :author, presence: true
  validates :summary, presence: true
end
