class AddColumnToAddresses < ActiveRecord::Migration[7.0]
  def change
  add_column:addresses,:user_id, :int
  end
end
