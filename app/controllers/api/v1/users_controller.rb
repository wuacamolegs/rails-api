module Api::V1
  class UsersController  < ApiController
    def index
      users = User.last(10)
      render json: users, status: :ok
    end
  end
end
