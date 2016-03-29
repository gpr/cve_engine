module CveEngine
  module Schema
    module Cvss
      require 'roxml'

      # <xsd:complexType name="baseMetricsType">
      #   <xsd:complexContent mixed="false">
      #     <xsd:extension base="metricsType">
      #         <xsd:sequence>
      #           <xsd:element minOccurs="0" name="score" type="zeroToTenDecimalType" />
      #           <xsd:element minOccurs="0" name="exploit-subscore" type="zeroToTenDecimalType" />
      #           <xsd:element minOccurs="0" name="impact-subscore" type="zeroToTenDecimalType" />
      #           <xsd:group ref="baseVectorsGroup"/>
      #           <xsd:element name="source" type="xsd:anyURI" />
      #           <xsd:element minOccurs="0" name="generated-on-datetime" type="xsd:dateTime"/>
      #       </xsd:sequence>
      #     </xsd:extension>
      #   </xsd:complexContent>
      # </xsd:complexType>

      # <xsd:group name="baseVectorsGroup">
      #   <xsd:sequence>
      #     <xsd:element minOccurs="0" name="access-vector" type="accessVectorType"/>
      #     <xsd:element minOccurs="0" name="access-complexity" type="accessComplexityType"/>
      #     <xsd:element minOccurs="0" name="authentication" type="authenticationType"/>
      #     <xsd:element minOccurs="0" name="confidentiality-impact" type="ciaType"/>
      #     <xsd:element minOccurs="0" name="integrity-impact" type="ciaType"/>
      #     <xsd:element minOccurs="0" name="availability-impact" type="ciaType"/>
      #   </xsd:sequence>
      # </xsd:group>
      class BaseMetricsType
        include ROXML

        xml_namespace :cvss

        xml_reader :score, from: 'score'
        xml_reader :exploit_subscore, from: 'exploit-subscore'
        xml_reader :impact_subscore, from: 'impact-subscore'

        xml_reader :access_vector, from: 'access-vector'
        xml_reader :access_complexity, from: 'access-complexity'
        xml_reader :authentication, from: 'authentication'
        xml_reader :confidentiality_impact, from: 'confidentiality-impact'
        xml_reader :integrity_impact, from: 'integrity-impact'
        xml_reader :availability_impact, from: 'availability-impact'

        xml_reader :generated_on_datetime, from: 'generated-on-datetime'

        def to_s(tab=nil)
          str  = "#{tab}base_metrics:\n"
          str += "#{tab}  score: #{score}\n" if score
          str += "#{tab}  exploit_subscore: #{exploit_subscore}\n" if exploit_subscore
          str += "#{tab}  impact_subscore: #{impact_subscore}\n" if impact_subscore
          str += "#{tab}  access_vector: #{access_vector}\n" if access_vector
          str += "#{tab}  access_complexity: #{access_complexity}\n" if access_complexity
          str += "#{tab}  authentication: #{authentication}\n" if authentication
          str += "#{tab}  confidentiality_impact: #{confidentiality_impact}\n" if confidentiality_impact
          str += "#{tab}  integrity_impact: #{integrity_impact}\n" if integrity_impact
          str += "#{tab}  availability_impact: #{availability_impact}\n" if availability_impact
          str += "#{tab}  generated_on_datetime: #{generated_on_datetime}\n" if generated_on_datetime
          str
        end
      end
    end
  end
end

