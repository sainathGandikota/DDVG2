class CreateGrammars < ActiveRecord::Migration
  def change
    create_table :grammars do |t|

    	#t.column :id , :integer
    	t.column :src , :text
    	t.column :text , :text

      t.timestamps 
    end
  end
end
