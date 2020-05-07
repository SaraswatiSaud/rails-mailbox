class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.string :subject
      t.text :content
      t.string :from
      t.string :to
      t.jsonb :settings

      t.timestamps
    end
  end
end
