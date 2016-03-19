module CveEngine
  module Schema
    module CpeLanguage
      # <xsd:simpleType name="namePattern">
      #   <xsd:annotation>
      #     <xsd:documentation xml:lang="en">Define the format for acceptable CPE Names. A URN format is used with the id starting with the word cpe followed by :/ and then some number of individual  components separated by colons.</xsd:documentation>
      #   </xsd:annotation>
      #   <xsd:restriction base="xsd:anyURI">
      #     <xsd:pattern value="[c][pP][eE]:/[AHOaho]?(:[A-Za-z0-9\._\-~%]*){0,6}"/>
      #   </xsd:restriction>
      # </xsd:simpleType>
      class NamePattern < String

        # a. part
        # b. vendor
        # c. product
        # d. version
        # e. update
        # f. edition
        # g. language
        # h. sw_edition
        # i. target_sw
        # j. target_hw
        # k. other
        CPE_NAME_PATTERN = /[c][pP][eE]:\/(?<part>[AHOaho])?(?<components>(:[A-Za-z0-9\._\-~%]+){0,6})/
        PART_TYPES = { 'a' => 'application', 'o' => 'operating system', 'h' => 'hardware device'}

        def initialize(str)

          raise Exception.new("Invalid CPE Name") unless NamePattern.valid?(str)

          super(str)

          @match = CPE_NAME_PATTERN.match(self.to_s)
        end

        def part
          match[:part]
        end

        # The value “a”, when the WFN is for a class of applications.
        # The value “o”, when the WFN is for a class of operating systems.
        # The value “h”, when the WFN is for a class of hardware devices.
        def part_name
          PART_TYPES[part]
        end

        def vendor
          components[0]
        end

        def product
          components[1]
        end

        def version
          components[2]
        end

        def update
          components[3]
        end

        def edition
          components[4]
        end

        def language
          components[5]
        end

        def sw_edition
          components[6]
        end

        def target_sw
          components[7]
        end

        def target_hw
          components[8]
        end

        def other
          components[9]
        end

        def self.valid?(str)
          CPE_NAME_PATTERN =~ str
        end

        private

        def components
          match[:components].split(':').delete_if(&:blank?)
        end

        def match
          @match
        end
      end
    end
  end
end