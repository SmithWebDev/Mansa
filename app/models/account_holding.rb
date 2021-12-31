# == Schema Information
#
# Table name: account_holdings
#
#  id         :integer          not null, primary key
#  account_id :integer          not null
#  company_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_account_holdings_on_account_id  (account_id)
#  index_account_holdings_on_company_id  (company_id)
#

class AccountHolding < ApplicationRecord
  belongs_to :account
  belongs_to :company
end
