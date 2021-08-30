require 'rails_helper'

RSpec.describe 'Test API', type: :request do
  # initialize test data
  let!(:user) { create_list(:user, 10) }
  let(:user_id) { user.first.id }

  # Test suite for GET /todos
  describe 'GET /user' do
    # make HTTP get request before each example
    before { get '/user' }

    it 'returns user' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /todos/:id
  describe 'GET /user/:id' do
    before { get "/user/#{user_id}" }

    context 'when the record exists' do
      it 'returns the user' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(user_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:user_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find User/)
      end
    end
  end

  # Test suite for POST /todos
  describe 'POST /user' do
    # valid payload
    let(:valid_attributes) { { name: 'Jim', password: '1' } }

    context 'when the request is valid' do
      before { post '/user', params: valid_attributes }

      it 'creates a user' do
        expect(json['name']).to eq('Jim')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/user', params: { name: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Password can't be blank/)
      end
    end
  end

  # Test suite for PUT /todos/:id
  describe 'PUT /user/:id' do
    let(:valid_attributes) { { name: 'Jim' } }

    context 'when the record exists' do
      before { put "/user/#{user_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /todos/:id
  describe 'DELETE /user/:id' do
    before { delete "/user/#{user_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
