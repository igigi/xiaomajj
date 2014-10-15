module API
  module V1
    class Users < Grape::API
      include API::V1::Defaults

      resource :users do

        desc "Create a user."
        params do
          requires :email, type: String, desc: "user email"
          requires :password, type: String, desc: "user password"
        end
        post do
          User.create!({
            login: params[:login],
            email: params[:email],
            password: params[:password]
          })
        end
      end
    end
  end
end