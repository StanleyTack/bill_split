class CreateBeneficiaries < ActiveRecord::Migration
  def change
    create_table :beneficiaries do |t|
      t.integer :transaction_id
      t.integer :user_id

      t.timestamps

    end
  end
end
