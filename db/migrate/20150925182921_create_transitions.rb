class CreateTransitions < ActiveRecord::Migration
  def change
    create_table :transitions do |t|

    	#t.column :id , :integer
      t.column :name , :text
    	t.column :description , :text
    	t.column :from_state_id , :integer
    	t.column :to_state_id , :integer
    	t.column :condition_text , :text



      t.timestamps 
    end
  end
end
