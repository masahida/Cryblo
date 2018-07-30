class Listing < ActiveRecord::Base
  belongs_to :user
has_many :photos
  #必須項目
  validates :main_type, presence: true
  validates :play_type, presence: true
  validates :play_size, presence: true
  validates :use_years, presence: true

  # geocoded_by :address
  # after_validation :geocode, :if => :address_changed?
end
