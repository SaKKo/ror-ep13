# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  sku        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Product < ApplicationRecord
  has_many :user_interests, as: :interestable
end
