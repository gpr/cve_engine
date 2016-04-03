FactoryGirl.define do
  factory :base_metrics_set, class: 'CveEngine::BaseMetricsSet' do
    vulnerability
    score '9.0'
    exploit_subscore '5.3'
    impact_subscore '4.3'
    access_vector 'NETWORK'
    access_complexity 'LOW'
    authentication 'NONE'
    confidentiality_impact 'PARTIAL'
    integrity_impact 'NONE'
    availability_impact 'NONE'
    generated_on_datetime '2016-03-31 21:45:57'
  end
end
