require 'test_helper'

module EngineTemplate
  describe WelcomeController do
    before do
        @routes = Engine.routes
    end

    it 'should get home' do
      get :home
      assert_response :success
    end

    it 'should get dashboard' do
      get :dashboard
      assert_response :success
    end

  end
end
