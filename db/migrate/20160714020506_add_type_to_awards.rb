class AddTypeToAwards < ActiveRecord::Migration[5.0]
  def change
    remove_column :awards, :type
    add_column :awards, :type, :integer
  end
end
