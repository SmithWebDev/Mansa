class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :cik
      t.string :sector
      t.string :ticker_symbol
      t.timestamps
    end
    add_index :companies, :ticker_symbol, unique: true
  end
end
