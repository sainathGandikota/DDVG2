class Audio < ActiveRecord::Base
	def to_vxml
    return <<-EOS
      <audio src="#{self.src}">#{self.text}</audio>
    EOS
  end
end
