class FetchLatestQuotationService
  def call!
    response = Fixer.new.latest_quotation

    if response['success']
      attributes = {}
      attributes[:real] = response.dig('rates', 'BRL')
      attributes[:us_dollar] = response.dig('rates', 'USD')
      attributes[:aus_dollar] = response.dig('rates', 'AUD')
      attributes[:euro] = response.dig('rates', 'EUR')

      Quotation.create(attributes)
    end
  end
end
