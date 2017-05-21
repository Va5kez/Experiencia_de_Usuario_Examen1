class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.text :client_name
      t.text :loan_type
      t.decimal :amount

      t.timestamps
    end
  end
end
