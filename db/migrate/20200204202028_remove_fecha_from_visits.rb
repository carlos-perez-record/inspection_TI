class RemoveFechaFromVisits < ActiveRecord::Migration[6.0]
  def change

    remove_column :visits, :fecha, :datetime
  end
end
