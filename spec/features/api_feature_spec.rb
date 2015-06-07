require 'rails_helper'

feature 'api calls' do
  context 'to the authors route' do
    xscenario 'returns a list of authors' do
      author = Author.create(last_name: 'Twain', first_name: 'Mark')
      get '/authors'
      expect(response.status).to eq(200)
      # expect(JSONparse(last_response.body)['last_name']).to eq('Twain')
    end

    scenario 'exist in the API' do
      get '/authors'
      assert last_response.ok?
    end

  end
end
