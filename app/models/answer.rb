class Answer < ActiveRecord::Base
  mount_uploader :audio_url, VideoUploader
  belongs_to :question
end
