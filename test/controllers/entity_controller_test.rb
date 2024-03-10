require "test_helper"

class EntityControllerTest < ActionDispatch::IntegrationTest
  let!(:entity) { create(:entity) }

  it 'returns an entity' do
    get "api/entities/#{entity.id}"

    e = JSON.parse(response.body, symbolize.names: true)
    expect(e.id).to eq(entity.id)
  end
end
