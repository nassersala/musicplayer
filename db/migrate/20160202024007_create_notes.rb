class CreateNotes < ActiveRecord::Migration
  def change
    if ! table_exists?(:notes)
      create_table :notes do |t|
        t.string :title
        t.text :body
        t.timestamps
      end
    end
  end
end
