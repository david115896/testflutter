class RenameTableListTripLtrip < ActiveRecord::Migration[5.2]
  def change
    rename_table :list_trips, :ltrips
  end 
end
