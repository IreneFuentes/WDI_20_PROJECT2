class AddCapitalAndFlagAndPopulationAndCurrencyAndLanguageToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :capital, :string
    add_column :countries, :flag, :text
    add_column :countries, :population, :integer
    add_column :countries, :currency, :string
    add_column :countries, :language, :string
  end
end
