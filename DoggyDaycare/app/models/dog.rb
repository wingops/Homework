class Dog < ApplicationRecord
    validates :name, presence: true
    validate :name_length_min

    def name_length_min
        unless self.name.length >= 4
            errors[:name] << "is too short."  #Must be of length 4 or greater"
        end
    end

    # manual way, need to provide getters & setters

    # def toys
	#     Toy.where({ dog_id: self.id })
    # end

    has_many :toys, 
        primary_key: :id,
        foreign_key: :dog_id,
        class_name: :Toy

end
