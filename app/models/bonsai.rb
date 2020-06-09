class Bonsai < ApplicationRecord
    # before_destroy :not_referenced_by_any_bonsai_item
    
    mount_uploader :image, ImageUploader
    serialize :image, JSON

    has_many :reviews, dependent: :delete_all
    has_many :users, through: :reviews

    belongs_to :user, optional: true
    # has_many :bonsai_items

    validates :name, :type_of, :price, presence: true
    validates :description, length: {maximum: 1000, too_long: "%{count} characters is the maximum allowed. "}


    TYPE = %w{ Outdoor Indoor Beginner Flowering DYI }

     # added scopes to differentiate bonsai types
    scope :bonsai_type, -> (plant_type) { where("type_of = ?", plant_type).limit(4) }

    # Individual Scopes
    # scope :bonsai_indoor, -> {where(type_of: "Indoor")}
    # scope :bonsai_outdoor, -> {where(type_of: "Outdoor")}

    scope :new_first, -> { order(created_at: :desc) }


    private

    def not_referenced_by_any_bonsai_item
        unless bonsai_items.empty?
            errors.add(:base, "Bonsai items present")
            throw :abort
        end
    end

end
