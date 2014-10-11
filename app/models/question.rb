class Question < ActiveRecord::Base
	mount_uploader :video_url, VideoUploader
	has_many :answers
	has_many :records
	has_many :opinions
end
