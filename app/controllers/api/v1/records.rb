module API
  module V1
    class Records < Grape::API
      include API::V1::Defaults

      resource :records do

        desc "Create a record."
        params do
          requires :audio_url, type: Rack::Multipart::UploadedFile, desc: "audio url"
          requires :audio_length, type: String, desc: "audio length"
          requires :question_id, type: Integer, desc: "question ID"
          requires :user_id, type: Integer, desc: "user ID"
        end
        post do
          Record.create!({
            audio_url: params[:audio_url],
            audio_length: params[:audio_length],
            question_id: params[:question_id],
            user_id: params[:user_id]
          })
        end

        desc "Get the newest three records."
        get do
          Record.limit(3)
        end
      end
    end
  end
end