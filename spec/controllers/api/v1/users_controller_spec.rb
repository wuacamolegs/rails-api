require 'rails_helper'

describe Api::V1::UsersController do
  describe 'GET #index' do
    context 'when no users exists' do
      before do
        get :index
      end

      it 'returns an empty array' do
        expect(response_body).to eq([])
      end

      it 'returns ok status' do
        expect(response).to have_http_status(:ok)
      end
    end

    context 'when one or more categories exist' do
      before do
        create(:user)
        get :index
      end

      it 'returns ok status' do
        expect(response).to have_http_status(:ok)
      end

      it 'returns the preconfigured profile' do
        expect(response_body.length).to eq(1)
      end
    end
  end
end
