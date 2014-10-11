class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :month, :number, :title, :content, :video_url
  has_many :answers
  has_many :records
  has_many :opinions
end
