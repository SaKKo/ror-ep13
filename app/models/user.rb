# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_many :user_interests
  has_many :products, through: :user_interests, source: :interestable, source_type: "Product"
  has_many :places, through: :user_interests, source: :interestable, source_type: "Place"

  def interestables
    self.user_interests.map{|ui| ui.interestable}
  end
end
