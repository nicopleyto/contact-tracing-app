class ChangeIntegerLimitInCustomers < ActiveRecord::Migration[6.1]
  def change
    change_column :customers, :mobile_number, :integer, limit: 8
  end
end
