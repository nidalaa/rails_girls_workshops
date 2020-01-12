class AddTimestampsToComments < ActiveRecord::Migration[5.2]
  def change
      add_timestamps :comments, null: true
  end
end
