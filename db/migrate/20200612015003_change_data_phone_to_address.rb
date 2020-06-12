class ChangeDataPhoneToAddress < ActiveRecord::Migration[5.2]
  def change
    change_column :addresses, :phone, :string
  end
end
