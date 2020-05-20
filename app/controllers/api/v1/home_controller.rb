module Api::V1
  class HomeController  < ApiController
    def index
      render json: { message: "Welcome home" }, status: :ok
    end
  end
end
