# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  author     :string
#  email      :string
#  published  :boolean          default(FALSE)
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ActiveRecord::Base
  has_one :answer, dependent: :destroy
  accepts_nested_attributes_for :answer

  scope :published, -> {where published: true}
end
