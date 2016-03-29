module CveEngine
  module Schema
    module Cvss
      require 'roxml'

      require 'cve_engine/schema/cvss/base_metrics_type'
      require 'cve_engine/schema/cvss/environmental_metrics_type'
      require 'cve_engine/schema/cvss/temporal_metrics_type'

      # <xsd:complexType name="cvssImpactType">
      #   <xsd:complexContent>
      #     <xsd:restriction base="cvssType">
      #       <xsd:sequence>
      #         <xsd:element minOccurs="1" maxOccurs="1" name="base_metrics" type="baseMetricsType"/>
      #         <xsd:element minOccurs="0" maxOccurs="1" name="environmental_metrics" type="environmentalMetricsType"/>
      #         <xsd:element minOccurs="0" maxOccurs="1" name="temporal_metrics" type="temporalMetricsType"/>
      #       </xsd:sequence>
      #     </xsd:restriction>
      #   </xsd:complexContent>
	    # </xsd:complexType>
      class CvssImpactType
        include ROXML
        xml_namespace 'cvss'

        xml_accessor :base_metrics, as: BaseMetricsType, from: 'base_metrics'
        xml_accessor :environmental_metrics, as: EnvironmentalMetricsType , from: 'environmental_metrics'
        xml_accessor :temporal_metrics, as: TemporalMetricsType, from: 'temporal_metrics'

        def to_s(tab=nil)
          str = ""
          str += "#{base_metrics.to_s(tab)}" if base_metrics
          str += "#{environmental_metrics.to_s(tab)}" if environmental_metrics
          str += "#{temporal_metrics.to_s(tab)}" if temporal_metrics
          str
        end
      end
    end
  end
end