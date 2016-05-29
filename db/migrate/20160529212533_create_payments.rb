class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :payer_id
      t.integer :payee_id
      t.string :currency
      t.float :value

      t.timestamps

    end
  end
end
