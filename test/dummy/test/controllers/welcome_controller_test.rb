require 'test_helper'

describe WelcomeController do
  it 'should have a home page' do
    get :home
    assert_response :success
  end
end

