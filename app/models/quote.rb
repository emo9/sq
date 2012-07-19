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
#

class Quote < ActiveRecord::Base
  attr_accessible :body, :reference, :remark
  validates :body,      :presence => true,
                        :length => { :maximum => 500 }
  validates :reference, :presence => true,
                        :length => { :maximum => 100 }
  validates :remark,    :length => { :maximum => 500 }
  
  paginates_per 5
  default_scope :order => 'created_at DESC'
end
