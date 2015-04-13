require 'test_helper'

module EngineTemplate
  describe ApplicationHelper do

    describe '#menu_item_is_active' do

      it "should return 'active' if controller and action match" do
        controller_name = 'controller_test'
        action_name = 'action_test'
        menu_item_is_active({controller: controller_name, action: action_name},
                            controller=controller_name, action=action_name).must_equal 'active'
      end

      it 'should return nil if controller name does not match' do
        controller_name = 'controller_test'
        action_name = 'action_test'
        menu_item_is_active({controller: 'controller_invalid', action: action_name},
                            controller=controller_name, action=action_name).must_be_nil
      end

      it 'should return nil if action name does not match' do
        controller_name = 'controller_test'
        action_name = 'action_test'
        menu_item_is_active({controller: controller_name, action: 'action_invalid'},
                            controller=controller_name, action=action_name).must_be_nil
      end

    end
  end
end