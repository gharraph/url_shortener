class AddVisitedCounterToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :visited_counter, :integer, :default => 0

  end
end
