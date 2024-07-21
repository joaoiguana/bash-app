class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.decimal :price, precision: 8, scale: 2, null: false
      t.string :status, null: false

      t.timestamps
    end
  end
end
