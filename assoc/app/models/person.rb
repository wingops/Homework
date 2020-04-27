# == Schema Information
#
# Table name: people
#
#  id       :integer(8)      not null, primary key
#  name     :string
#  house_id :integer(4)      not null
#


class Person < ApplicationRecord
    validates :name, :house_id, presence: true

    belongs_to :house,
        foreign_key: :house_id,
        class_name: :House
end