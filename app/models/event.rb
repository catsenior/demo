class Event < ApplicationRecord
  validates :name, presence:true
  has_many :attendees, ->{  order("id DESC") }, dependent: :destroy
  belongs_to :category, optional: true
  has_one :location, dependent: :destroy
  has_many :event_groupships
  has_many :groups, through: :event_groupships
  has_many :memberships
  has_many :users, through: :memberships
  accepts_nested_attributes_for :location, allow_destroy: true, reject_if: :all_blank
end
