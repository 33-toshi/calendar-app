class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string        :title
      t.text          :task
      t.text          :memo
      t.date      :start_time
      t.boolean       :checked
      t.references    :user,     foreign_key: true
      t.timestamps
    end
  end
end
