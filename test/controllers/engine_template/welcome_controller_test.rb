require 'test_helper'

module EngineTemplate
  describe WelcomeController do

    before do
      @routes = Engine.routes
    end

    describe '#home' do

      it 'should be directly accessible' do
        get :home
        assert_response :success
      end

    end

    describe '#dashboard' do

      it 'should be directly accessible' do
        get :dashboard
        assert_response :success
      end

    end
  end
end
