class CreateCompanyAccounts < ActiveRecord::Migration
  def change
    create_table :company_accounts do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
