class AddUserIdToIdeas < ActiveRecord::Migration[5.2]
  def change
  	add_reference :ideas, :user
  end
end
