class Emoticon < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_and_belongs_to_many :chatrooms
end
