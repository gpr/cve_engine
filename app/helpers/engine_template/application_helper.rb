module EngineTemplate
  # Generic engine helpers
  module ApplicationHelper

    # Enable to set active class in menu item (e.g in Bootstrap nav)
    # @return [String] 'active' if the current menu item is active
    def menu_item_is_active(options={}, controller=controller_name, action=action_name)
      active = nil
      if controller == options[:controller]
        if action == options[:action]
          active = 'active'
        end
      end
      active
    end
  end
end
