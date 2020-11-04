class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :name, :address, :category, :phone_number, presence: true
    validates_inclusion_of :category, in: %w( chinese italian japanese french belgian ), on: :create, message: "extension %s is not included in the list"
end
