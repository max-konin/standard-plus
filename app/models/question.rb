# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  author     :string
#  email      :string
#  published  :boolean
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ActiveRecord::Base
  scope :published, -> {where published: true}
end
