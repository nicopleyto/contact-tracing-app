class AddAgreementToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :agreement, :boolean, default: false
  end
end
