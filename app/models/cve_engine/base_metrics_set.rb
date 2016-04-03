module CveEngine
  class BaseMetricsSet < ActiveRecord::Base
    # -----------------------------------------------------
    # Constants
    ACCESS_VECTOR_LIST = ['LOCAL','ADJACENT_NETWORK','NETWORK']
    ACCESS_COMPLEXITY_LIST = ['HIGH', 'MEDIUM', 'LOW']
    AUTHENTICATION_LIST = ['MULTIPLE_INSTANCES', 'SINGLE_INSTANCE', 'NONE']
    CIA_LIST = ['NONE', 'PARTIAL', 'COMPLETE']

    # -----------------------------------------------------
    # Inclusion / Extension (acts_as)

    # -----------------------------------------------------
    # Associations
    belongs_to :vulnerability, inverse_of: :base_metrics

    # -----------------------------------------------------
    # Validations
    validates :vulnerability, presence: true
    validates :score, presence: true, numericality: true, inclusion: { in: 0..10 }
    validates :exploit_subscore, numericality: true, inclusion: { in: 0..10 }, allow_blank: true
    validates :impact_subscore, numericality: true, inclusion: { in: 0..10 }, allow_blank: true
    validates :access_vector, inclusion: {in: ACCESS_VECTOR_LIST}, allow_blank: true
    validates :access_complexity, inclusion: {in: ACCESS_COMPLEXITY_LIST}, allow_blank: true
    validates :authentication, inclusion: {in: AUTHENTICATION_LIST}, allow_blank: true
    validates :confidentiality_impact, inclusion: {in: CIA_LIST}, allow_blank: true
    validates :integrity_impact, inclusion: {in: CIA_LIST}, allow_blank: true
    validates :availability_impact, inclusion: {in: CIA_LIST}, allow_blank: true

    # -----------------------------------------------------
    # Hooks

    # -----------------------------------------------------
    # Instance methods
    def access_vector_enum
      ACCESS_VECTOR_LIST
    end

    def access_complexity_enum
      ACCESS_COMPLEXITY_LIST
    end

    def authentication_enum
      AUTHENTICATION_LIST
    end

    def confidentiality_impact_enum
      CIA_LIST
    end

    def integrity_impact_enum
      CIA_LIST
    end

    def availability_impact_enum
      CIA_LIST
    end

    # -----------------------------------------------------
    # Class methods


    # -----------------------------------------------------
    # Private methods
    private

    # -----------------------------------------------------
    # rails_admin configuration
    rails_admin do
      list do
        field :vulnerability
        field :score
        field :exploit_subscore
        field :impact_subscore
        field :access_vector
        field :access_complexity
        field :authentication
        field :confidentiality_impact
        field :integrity_impact
        field :availability_impact
        field :generated_on_datetime
      end
      show do
        field :vulnerability
        field :score
        field :exploit_subscore
        field :impact_subscore
        field :access_vector
        field :access_complexity
        field :authentication
        field :confidentiality_impact
        field :integrity_impact
        field :availability_impact
        field :generated_on_datetime
      end
      edit do
        field :vulnerability
        field :score
        field :exploit_subscore
        field :impact_subscore
        field :access_vector
        field :access_complexity
        field :authentication
        field :confidentiality_impact
        field :integrity_impact
        field :availability_impact
        field :generated_on_datetime
      end

      create do
        field :vulnerability
        field :score
        field :exploit_subscore
        field :impact_subscore
        field :access_vector
        field :access_complexity
        field :authentication
        field :confidentiality_impact
        field :integrity_impact
        field :availability_impact
        field :generated_on_datetime
      end

      update do
        field :vulnerability
        field :score
        field :exploit_subscore
        field :impact_subscore
        field :access_vector
        field :access_complexity
        field :authentication
        field :confidentiality_impact
        field :integrity_impact
        field :availability_impact
        field :generated_on_datetime
      end

      nested do
        field :vulnerability
        field :score
        field :exploit_subscore
        field :impact_subscore
        field :access_vector
        field :access_complexity
        field :authentication
        field :confidentiality_impact
        field :integrity_impact
        field :availability_impact
        field :generated_on_datetime
      end

      modal do
        field :vulnerability
        field :score
        field :exploit_subscore
        field :impact_subscore
        field :access_vector
        field :access_complexity
        field :authentication
        field :confidentiality_impact
        field :integrity_impact
        field :availability_impact
        field :generated_on_datetime
      end
    end
  end
end
