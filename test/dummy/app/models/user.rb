class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    # -----------------------------------------------------
    # Constants

    # -----------------------------------------------------
    # Associations

    # -----------------------------------------------------
    # Validations

    # Instance methods


    # -----------------------------------------------------
    # Class methods
    def guest?
      false
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
