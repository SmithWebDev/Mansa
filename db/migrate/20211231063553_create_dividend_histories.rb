class CreateDividendHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :dividend_histories do |t|
      t.float :dividend_payout_amount
      t.date :declaration_date
      t.date :exdividend_date
      t.date :record_date
      t.date :payment_date
      t.string :dividend_payout_frequency
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
