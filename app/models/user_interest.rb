# == Schema Information
#
# Table name: user_interests
#
#  id                :bigint           not null, primary key
#  interestable_type :string           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  interestable_id   :bigint           not null
#  user_id           :bigint           not null
#
# Indexes
#
#  index_user_interests_on_interestable_type_and_interestable_id  (interestable_type,interestable_id)
#  index_user_interests_on_user_id                                (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class UserInterest < ApplicationRecord
  belongs_to :user
  belongs_to :interestable, polymorphic: true
end
