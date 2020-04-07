# == Schema Information
#
# Table name: places
#
#  id         :bigint           not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Place < ApplicationRecord
  has_many :user_interests, as: :interestable
end
