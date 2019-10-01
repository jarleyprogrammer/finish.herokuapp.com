class Publication < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged
    validates :content, presence: true

    belongs_to :user
end