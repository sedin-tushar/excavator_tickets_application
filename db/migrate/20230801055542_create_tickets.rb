class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :request_number
      t.string :sequence_number
      t.string :request_type
      t.datetime :response_due_date_time
      t.string :sacode
      t.string :additional_sacodes
      t.text :digsite_info

      t.timestamps
    end
  end
end
