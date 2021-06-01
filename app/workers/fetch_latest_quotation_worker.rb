class FetchLatestQuotationWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'default'

  def perform
    service = FetchLatestQuotationService.new
    service.call!
  end
end
