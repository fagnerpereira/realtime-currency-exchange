class CreateQuotations < ActiveRecord::Migration[6.1]
  def change
    create_table :quotations do |t|
      t.monetize :real
      t.monetize :us_dollar
      t.monetize :aus_dollar
      t.monetize :euro
      t.timestamps
    end
  end
end
