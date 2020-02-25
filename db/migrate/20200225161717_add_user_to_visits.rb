class AddUserToVisits < ActiveRecord::Migration[6.0]
  def change
    add_reference :visits, :user, notnull: false, foreign_key: true
  end
end
