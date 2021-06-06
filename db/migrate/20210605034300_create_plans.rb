class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string        :task
      t.text          :detail
      t.text          :memo
      t.datetime      :start_time
      t.boolean       :checked
      t.references    :user,     foreign_key: true
      t.timestamps
    end
  end
end
