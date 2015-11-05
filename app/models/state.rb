class State < ActiveRecord::Base
	 def to_vxml
    if self.statetype == "say"
      return Say.find_by_state(self.id).to_vxml
    elsif self.statetype == "break"
        return "<block><break size=\"medium\"/></block>"
    elsif self.statetype == "listen"
      return Listen.find_by_state(self.id).to_vxml
    elsif self.statetype == "custom"
      return Custom.find_by_state(self.id).to_vxml
    else
      return <<-EOS
        <block>
          <prompt>
            <audio>unsupported state type</audio>
          </prompt>
        </block>
      EOS
    end
  end
end
