class Potager < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:address, :name],
    using: {
      tsearch: {prefix: true}
    }

  belongs_to :user

  has_many :bookings

  has_one_attached :photo
end
