class RenameIssuedToMissing < ActiveRecord::Migration
  def change
    rename_column :keys, :issued, :missing
  end
end
