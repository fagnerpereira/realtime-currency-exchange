class Fixer
  def latest_quotation
    uri = URI("http://data.fixer.io/api/latest?access_key=#{access_key}&symbols=BRL,USD,%20AUD,%20EUR")
    response = Net::HTTP.get(uri)
    JSON.parse response
  end

  private

  def access_key
    Rails.application.credentials.fixer[:access_key]
  end
end
