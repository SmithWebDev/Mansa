# == Schema Information
#
# Table name: price_histories
#
#  id         :integer          not null, primary key
#  low        :float
#  high       :float
#  open       :float
#  close      :float
#  day        :date
#  company_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_price_histories_on_company_id  (company_id)
#

require 'rails_helper'

RSpec.describe PriceHistory, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
