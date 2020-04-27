class Toy < ApplicationRecord
    validates :name, presence: true
    validates :dog_id, presence: true
    validates :color, presence: true

    # manual way, need to provide getters & setters
    
    # def dog 
    #     Dog.find(dog_id)
    # end

    belongs_to :dog,
        primary_key: :id,
        foreign_key: :dog_id,
        class_name: :Dog
end