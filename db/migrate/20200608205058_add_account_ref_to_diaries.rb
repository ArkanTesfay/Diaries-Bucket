class AddAccountRefToDiaries < ActiveRecord::Migration[5.2]
  def change
  	add_reference :diaries, :account
  end
end
