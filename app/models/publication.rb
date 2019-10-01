class Publication < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged
    validates :content, presence: true

    belongs_to :user

    has_attached_file :image, 
        :storage => :s3,
        styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

    validates_attachment_content_type :image, content_type: ["image/jpeg", "image/gif", "image/png"]

    
end