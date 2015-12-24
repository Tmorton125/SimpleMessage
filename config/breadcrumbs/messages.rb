crumb :messages do 
	link "View Messages", messages_path
end

crumb :message do |message|

	unless message.blank?
		link message.name, message
	end

	parent :messages
end

crumb :new_message do

	link "New Message"
	parent :messages
end

crumb :edit_message do |message|
   
   unless message.blank?
     link "Edit  - #{message.name}"
   end

  parent :message, message

end