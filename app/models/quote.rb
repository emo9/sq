# == Schema Information
#
# Table name: quotes
#
#  id         :integer          not null, primary key
#  body       :text
#  reference  :string(255)
#  remark     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Quote < ActiveRecord::Base
  attr_accessible :body, :reference, :remark, :tag_list
  validates  :body,      :presence => true,
                         :length => { :maximum => 500 }
  validates  :reference, :presence => true,
                         :length => { :maximum => 100 }
  validates  :remark,    :length => { :maximum => 500 }
  validates  :user_id,   :presence => true

  belongs_to :user

  paginates_per 5

  default_scope :order => 'created_at DESC'

  acts_as_taggable
end
