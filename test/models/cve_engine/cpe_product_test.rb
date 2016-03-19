require 'test_helper'

module CveEngine
  describe CpeProduct do
    let(:cpe_product) { build(:cpe_product) }

    it 'must be valid' do
      cpe_product.valid?
      value(cpe_product.errors.messages).must_be_empty
    end

    it 'must be saved' do
      value(cpe_product.save).wont_be :nil?
    end
  end
end
