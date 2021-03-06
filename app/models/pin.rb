class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, 
		:styles => {
			:large => "1024 x 1024>",
			:medium => "300 x 300>",
			:thumb => "100x100>"
		}
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
