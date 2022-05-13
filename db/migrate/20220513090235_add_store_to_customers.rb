class AddStoreToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :store, :string
  end
end
