class Imag < ApplicationRecord
    belongs_to :user

    has_attached_file :image, validate_media_type: false
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*/
end
