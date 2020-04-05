class Link < ApplicationRecord
  belongs_to :user

  validates :name, :url, presence: true
  validates :position, presence: true, if: :persisted?

  # On create it sets it to the last position
  before_create do
    self.position = user.links.select('position + 1 as new_position')
                              .order(position: :desc)
                              .first
                              .new_position
  end

  scope :ordered_by_position, -> { order(position: :asc) }
end
