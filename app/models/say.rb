class Say < ActiveRecord::Base
	 def to_vxml
    return <<-EOS
    <block>
      <prompt>
        #{Audio.find(self.audio).to_vxml}
      </prompt>
    </block>
    EOS
  end
end
