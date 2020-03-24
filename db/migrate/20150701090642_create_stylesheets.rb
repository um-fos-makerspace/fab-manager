# frozen_string_literal:true

class CreateStylesheets < ActiveRecord::Migration[4.2]
  def change
    create_table :stylesheets do |t|
      t.text :contents

      t.timestamps null: false
    end
  end
end
