class Record < ApplicationRecord
    mount_uploader :image, ImageUploader
    serialize :image, JSON #If you use SQlite, ass this line
    belongs_to :user, optional :true


    validates :artist, :title, :price, :genre, presence: true
    validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed. "}
    validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed. "}
    validates :price, numericality: { only_integer: true }, length: { maximum: 7 }


    GENRE = %w{ Rock Jazz Classical Rap HipHop Alternative Indie Disco Soul Funk Pop Punk HeavyMetal Country Folk MusicalTheatre  }
    CONDITION = %w{New Excellent Mint Used Fair Poor }
end
