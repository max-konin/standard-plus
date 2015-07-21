# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  text        :text
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#

class Answer < ActiveRecord::Base
  belongs_to :question

  validates_presence_of :text, :question_id
end
