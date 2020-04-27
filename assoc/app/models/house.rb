# == Schema Information
#
# Table name: houses
#
#  id         :integer(8)      not null, primary key
#  house_name :string          not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  address    :text
#


class House < ApplicationRecord

    has_many :residents,
        foreign_key: :house_id
end