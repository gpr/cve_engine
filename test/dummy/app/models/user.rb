class User < ActiveRecord::Base
  # :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable
    # -----------------------------------------------------
    # Constants

    # -----------------------------------------------------
    # Associations

    # -----------------------------------------------------
    # Validations

    # Instance methods
    def guest?
      false
    end

    # -----------------------------------------------------
    # Class methods
    def self.admins
      User.where name: 'Admin'
    end

    # -----------------------------------------------------
    # Private methods
    private

    # -----------------------------------------------------
    # rails_admin configuration
    rails_admin do
      list do
      end

      show do
      end

      edit do
      end

      create do
      end

      update do
      end

      nested do
      end

      modal do
      end
    end
  end
