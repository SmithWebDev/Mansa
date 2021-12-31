class CreatePriceHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :price_histories do |t|
      t.float :low
      t.float :high
      t.float :open
      t.float :close
      t.date :day
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
