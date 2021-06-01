require 'rails_helper'

RSpec.describe Quotation, type: :model do
  describe '#format' do
    context 'same value' do
      let(:quotation) { Quotation.new(real: 10, us_dollar: 10, aus_dollar: 10, euro: 10) }

      before do
        quotation.save
      end

      it { expect(quotation.real.format).to eq('R$10.00') }
      it { expect(quotation.us_dollar.format).to eq('$10.00') }
      it { expect(quotation.aus_dollar.format).to eq('$10.00') }
      it { expect(quotation.euro.format).to eq('€10.00') }
    end

    context 'different values' do
      let(:quotation) { Quotation.new(real: 1, us_dollar: 50, aus_dollar: 10.50, euro: 7.75) }

      before do
        quotation.save
      end

      it { expect(quotation.real.format).to eq('R$1.00') }
      it { expect(quotation.us_dollar.format).to eq('$50.00') }
      it { expect(quotation.aus_dollar.format).to eq('$10.50') }
      it { expect(quotation.euro.format).to eq('€7.75') }
    end
  end
end
