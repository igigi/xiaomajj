module API
  module V1
    class Opinions < Grape::API
      include API::V1::Defaults

      resource :Opinions do

        desc "Create a Opinions."
        params do
          requires :content, type: String, desc: "opinion content"
          requires :question_id, type: Integer, desc: "question ID"
          requires :user_id, type: Integer, desc: "user ID"
        end
        post do
          Opinion.create!({
            content: params[:content],
            question_id: params[:question_id],
            user_id: params[:user_id]
          })
        end

        desc "Get the newest three opinions."
        get do
          Opinion.limit(3)
        end
      end
    end
  end
end