# == Schema Information
#
# Table name: dividend_histories
#
#  id                        :integer          not null, primary key
#  dividend_payout_amount    :float
#  declaration_date          :date
#  exdividend_date           :date
#  record_date               :date
#  payment_date              :date
#  dividend_payout_frequency :string
#  company_id                :integer          not null
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#
# Indexes
#
#  index_dividend_histories_on_company_id  (company_id)
#

class DividendHistory < ApplicationRecord
  default_scope { order(payment_date: :desc) }
  belongs_to :company
end
