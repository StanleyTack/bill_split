class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :description
      t.text :notes
      t.string :currency
      t.float :value
      t.integer :payer_id
      t.integer :group_id

      t.timestamps

    end
  end
end
