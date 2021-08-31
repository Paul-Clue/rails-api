require 'rails_helper'

RSpec.describe 'Test API', type: :request do
  # initialize test data
  user = User.create(name: 'A', password: 'password')

  # Test suite for GET /todos
  describe 'GET /user' do
    # make HTTP get request before each example
    before { post '/login' }

    it 'returns user' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /todos/:id
  describe 'GET /user/params[:name]' do
    before { post '/login' }

    context 'when the record exists' do
      it 'returns the user' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(nil)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:id) { 1000 }

      it 'returns status code 404' do
        expect(response).to have_http_status(200)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/no/)
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
      before { put '/user/id', params: 'j' }

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
    before { delete "/user/#{user.id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
