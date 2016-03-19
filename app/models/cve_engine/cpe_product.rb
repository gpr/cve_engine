module CveEngine

  require 'cve_engine/schema/cpe-language/name_pattern'

  class CpeProduct < ActiveRecord::Base
    # -----------------------------------------------------
    # Constants
    COMPONENT_PATTERN = "[A-Za-z0-9\._\-~%]+"
    COMPONENT_REGEX = /#{COMPONENT_PATTERN}/
    CPE_NAME_REGEX = /[c][pP][eE]:\/(?<part>[AHOaho])?(?<components>(:#{COMPONENT_PATTERN}){0,6})/
    PART_LIST = ['a', 'o', 'h']
    PART_TYPES = { 'a' => 'application', 'o' => 'operating system', 'h' => 'hardware device'}


    # -----------------------------------------------------
    # Inclusion / Extension (acts_as)

    # -----------------------------------------------------
    # Associations
    has_and_belongs_to_many :vulnerabilities

    # -----------------------------------------------------
    # Validations
    validates :cpe_name, presence: true, format: {with: CPE_NAME_REGEX}, uniqueness: true
    validates :part, presence: true, inclusion: {in: PART_LIST}
    validates :vendor, presence: true, format: {with: COMPONENT_REGEX}
    validates :product, presence: true, format: {with: COMPONENT_REGEX}
    validates :version, format: {with: COMPONENT_REGEX, allow_blank: true}
    validates :update_name, format: {with: COMPONENT_REGEX, allow_blank: true}
    validates :edition, format: {with: COMPONENT_REGEX, allow_blank: true}
    validates :language, format: {with: COMPONENT_REGEX, allow_blank: true}
    validates :sw_edition, format: {with: COMPONENT_REGEX, allow_blank: true}
    validates :target_sw, format: {with: COMPONENT_REGEX, allow_blank: true}
    validates :target_hw, format: {with: COMPONENT_REGEX, allow_blank: true}
    validates :other, format: {with: COMPONENT_REGEX, allow_blank: true}

    # -----------------------------------------------------
    # Hooks
    before_validation :set_components

    # -----------------------------------------------------
    # Instance methods
    def part_enum
      PART_LIST
    end

    # -----------------------------------------------------
    # Class methods

    # -----------------------------------------------------
    # Private methods
    private

    def set_components
      cn = Schema::CpeLanguage::NamePattern.new(self.cpe_name)
      self.part = cn.part
      self.vendor = cn.vendor
      self.product = cn.product
      self.version = cn.version
      self.update_name = cn.update
      self.edition = cn.edition
      self.language = cn.language
      self.sw_edition = cn.sw_edition
      self.target_sw = cn.target_sw
      self.target_hw = cn.target_hw
      self.other = cn.other
    end

    # -----------------------------------------------------
    # rails_admin configuration
    rails_admin do
      list do
        field :cpe_name
        field :part
        field :vendor
        field :product
        field :version
        field :update_name
        field :edition
        field :language
        field :sw_edition
        field :target_sw
        field :target_hw
        field :other
      end
      show do
        field :cpe_name
        field :part
        field :vendor
        field :product
        field :version
        field :update_name
        field :edition
        field :language
        field :sw_edition
        field :target_sw
        field :target_hw
        field :other
      end
      edit do
        field :cpe_name
        field :part
        field :vendor
        field :product
        field :version
        field :update_name
        field :edition
        field :language
        field :sw_edition
        field :target_sw
        field :target_hw
        field :other
      end

      create do
        field :cpe_name
        field :part
        field :vendor
        field :product
        field :version
        field :update_name
        field :edition
        field :language
        field :sw_edition
        field :target_sw
        field :target_hw
        field :other
      end

      update do
        field :cpe_name
        field :part
        field :vendor
        field :product
        field :version
        field :update_name
        field :edition
        field :language
        field :sw_edition
        field :target_sw
        field :target_hw
        field :other
      end

      nested do
        field :cpe_name
        field :part
        field :vendor
        field :product
        field :version
        field :update_name
        field :edition
        field :language
        field :sw_edition
        field :target_sw
        field :target_hw
        field :other
      end

      modal do
        field :cpe_name
        field :part
        field :vendor
        field :product
        field :version
        field :update_name
        field :edition
        field :language
        field :sw_edition
        field :target_sw
        field :target_hw
        field :other
      end
    end
  end
end
