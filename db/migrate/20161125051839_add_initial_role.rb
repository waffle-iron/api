class AddInitialRole < ActiveRecord::Migration[5.0]
  def up
    Role.create!({:name => 'SuperAdmin'})
    Role.create!({:name => 'Owner'})
    Role.create!({:name => 'Admin'})
    Role.create!({:name => 'User'})
    Role.create!({:name => 'Guest'})
  end

  def down
    Role.delete_all
  end
end
