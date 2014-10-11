class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :audio_url
      t.string :audio_length
      t.references :question, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
