class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.string :subject
      t.text :content
      t.text :from, array: true, default: []
      t.text :to, array: true, default: []
      t.jsonb :settings

      t.timestamps
    end
  end
end
