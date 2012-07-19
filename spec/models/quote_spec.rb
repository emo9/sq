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

require 'spec_helper'

describe Quote do
  pending "add some examples to (or delete) #{__FILE__}"
end
