class RemoveStoreFromCustomers < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :store, :string
  end
end
