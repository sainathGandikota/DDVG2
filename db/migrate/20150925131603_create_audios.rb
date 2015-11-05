class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|

    	#t.column :id , :integer
    	t.column :src , :text
    	t.column :text , :text

      t.timestamps 
    end
  end
end
