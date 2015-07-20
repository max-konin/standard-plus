# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  title      :string
#  preview    :text
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class News < ActiveRecord::Base
end
