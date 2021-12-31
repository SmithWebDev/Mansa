# == Schema Information
#
# Table name: companies
#
#  id            :integer          not null, primary key
#  name          :string
#  cik           :string
#  sector        :string
#  ticker_symbol :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_companies_on_ticker_symbol  (ticker_symbol) UNIQUE
#

class Company < ApplicationRecord
end
