crumb :messages do 
	link "All Messages", messages_path
end

crumb :message do |message|

	unless message.blank?
		link message.name, message
	end
	parent :messages
end