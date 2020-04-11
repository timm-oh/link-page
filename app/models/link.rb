class Link < ApplicationRecord
  belongs_to :user

  validates :name, :url, presence: true
  validates :position, presence: true, if: :persisted?
  validates :name, uniqueness: { scope: :user }
  validates :url, format: /\A#{URI::regexp(['http', 'https'])}\z/

  # On create it sets it to the last position
  before_create do
    self.position = user.links.select('position + 1 as new_position')
                              .order(position: :desc)
                              .first
                              &.new_position || 1
  end

  scope :ordered_by_position, -> { order(position: :asc) }
end
