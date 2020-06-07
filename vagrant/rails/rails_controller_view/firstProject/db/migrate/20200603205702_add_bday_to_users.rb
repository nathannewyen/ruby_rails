class AddBdayToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bday, :date
  end
end
