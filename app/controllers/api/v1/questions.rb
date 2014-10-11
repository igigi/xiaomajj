module API
  module V1
    class Questions < Grape::API
      include API::V1::Defaults

      resource :questions do
        desc "Return all questions"
        get "", root: :questions do
          Question.all.select("id", "month").group_by &:month
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