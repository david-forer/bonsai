class Bonsai < ApplicationRecord

    mount_uploader :image, ImageUploader
    serialize :image, JSON

    belongs_to :user, optional: true

    validates :name, :type_of, :price, presence: true
    validates :description, length: {maximum: 1000, too_long: "%{count} characters is the maximum allowed. "}


    TYPE = %w{ Outdoor Indoor Beginner Flowering DYI }

end
