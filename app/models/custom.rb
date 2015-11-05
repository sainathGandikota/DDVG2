class Custom < ActiveRecord::Base
	def to_vxml
    campaign_id = State.find(self.state).campaign
    return <<-EOS
    <block>
      <goto next="#{self.url}?next=/campaign/index/#{campaign_id}&amp;state=state#{self.next}"/>
    </block>
    EOS
  end
end
