class ChangeExistenceStringToBool < ActiveRecord::Migration[7.2]
  def change
    change_column :apohealths, :existence, :boolean, null: false
  end
end
