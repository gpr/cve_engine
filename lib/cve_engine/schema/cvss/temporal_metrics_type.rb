module CveEngine
  module Schema
    module Cvss
      require 'roxml'

      # <xsd:complexType name="environmentalMetricsType">
      #   <xsd:complexContent mixed="false">
      #     <xsd:extension base="metricsType">
      #       <xsd:sequence>
      #         <xsd:element minOccurs="0" name="score" type="zeroToTenDecimalType"/>
      #         <xsd:group ref="environmentalVectorsGroup"/>
      #         <xsd:element name="source" type="xsd:anyURI">
      #           <xsd:annotation>
      #             <xsd:documentation>Data source the vector was obtained from.  Example:  gov.nist.nvd or com.symantec.deepsight</xsd:documentation>
      # 	        </xsd:annotation>
      #         </xsd:element>
      # 	    <xsd:element minOccurs="0" name="generated-on-datetime" type="xsd:dateTime"/>
      #       </xsd:sequence>
      #     </xsd:extension>
      #   </xsd:complexContent>
	    # </xsd:complexType>


      class TemporalMetricsType
        include ROXML

        xml_namespace :cvss

        xml_reader :score, from: 'score'

        def to_s(tab=nil)
          str  = "#{tab}temporal_metrics:\n"
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

