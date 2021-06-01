
require 'rails_helper'

RSpec.describe FetchLatestQuotationService do
  let(:service) { FetchLatestQuotationService.new }

  context 'when it fetches a new quotation', :vcr do
    it do
      service.call!
      expect(Quotation.count).to be(1)
      expect(Quotation.first.real.format).to eq('R$6.32')
      expect(Quotation.first.us_dollar.format).to eq('$1.22')
      expect(Quotation.first.aus_dollar.format).to eq('$1.58')
      expect(Quotation.first.euro.format).to eq('€1.00')
    end
  end
end
