# frozen_string_literal:true

class AddRecurrenceIdToEvent < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :recurrence_id, :integer
    add_index :events, :recurrence_id

    Event.all.each do |e|
      if e.respond_to? :recurrence_id and !e.recurrence_id?
        e.update_columns(recurrence_id: e.id)
      end
    end
  end
end
