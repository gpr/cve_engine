require 'test_helper'

module CveEngine
  describe BaseMetricsSet do
    let(:base_metrics_set) { build(:base_metrics_set) }

    it 'must be valid' do
      base_metrics_set.valid?
      value(base_metrics_set.errors.messages).must_be_empty
    end

    it 'must be saved' do
      value(base_metrics_set.save).wont_be :nil?
    end
  end
end
