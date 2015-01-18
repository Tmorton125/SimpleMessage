class Message < ActiveRecord::Base
	# attributes
	# :id
	# :name
	# :content
	# :creator_id
	# :delivery_time
	# :is_disabled

	validates :name, presence: true, 
		uniqueness: { scope: :creator_id }
		
	validates :content, length : { maximum: 255 }
end
