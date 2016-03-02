class CreateSubmittals < ActiveRecord::Migration
  def change
    create_table :submittals do |t|
      t.integer :req
      t.string :firstName
      t.string :lastName
      t.date :date
      t.string :location
      t.decimal :BR, :precision => 5, :scale => 2
      t.decimal :PR, :precision => 5, :scale => 2
      t.string :status
      t.string :submitter

      t.timestamps null: false
    end
  end
end
