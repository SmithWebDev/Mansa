# == Schema Information
#
# Table name: accounts
#
#  id              :integer          not null, primary key
#  account_balance :float
#  user_id         :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_accounts_on_user_id  (user_id)
#

class Account < ApplicationRecord
  has_many :account_holdings
  has_many :companies, through: :account_holdings
  belongs_to :user
end
