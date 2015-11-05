class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|

    	#t.column :id , :integer
    	t.column :name , :text
    	t.column :description , :text
    	t.column :start_state_id , :integer


      t.timestamps 
    end
  end
end
