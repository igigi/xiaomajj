module API
  module V1
    class Questions < Grape::API
      include API::V1::Defaults

      resource :questions do
        desc "Return current month questions"
        params do
          requires :month, type: String, desc: "search month"
        end
        get "", root: :questions do
          Question.where(month: params[:month]).ids
        end

        desc "Return a question"
        params do
          requires :id, type: String, desc: "ID of the question"
        end
        get ":id", root: "question" do
          Question.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end