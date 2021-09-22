class RenameIntoroductionColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :intoroduction, :introduction
  end
end
