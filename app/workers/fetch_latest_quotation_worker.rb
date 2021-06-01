class FetchLatestQuotationWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'default'

  def perform
    Quotation.create(real: (1..10).to_a.sample, us_dollar: (1..10).to_a.sample, aus_dollar: (1..10).to_a.sample, euro: (1..10).to_a.sample)
    #service = FetchLatestQuotationService.new
    #service.call!
  end
end
