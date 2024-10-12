class RenameTable < ActiveRecord::Migration[7.2]
  def up
    rename_table :apohealth, :apohealths
  end

  def down
    rename_table :apohealths, :apohealth
  end
end
