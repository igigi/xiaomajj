class Record < ActiveRecord::Base
  mount_uploader :audio_url, VideoUploader
  belongs_to :question
  belongs_to :user
end
