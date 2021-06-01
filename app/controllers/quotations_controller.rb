class QuotationsController < ApplicationController
  before_action :set_quotation, only: %i[ show edit update destroy ]

  def index
    @quotations = Quotation.last(10)
  end

  def fetch
    FetchLatestQuotationWorker.perform_async
  end

  private

  def set_quotation
    @quotation = Quotation.find(params[:id])
  end

  def quotation_params
    params.fetch(:quotation, {})
  end
end
