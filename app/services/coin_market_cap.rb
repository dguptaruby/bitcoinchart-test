# app/services/tweet_creator.rb
class CoinMarketCap
  include HTTParty


  def initialize
    @base_uri = 'https://pro-api.coinmarketcap.com/'
    @headers = {
      'X-CMC_PRO_API_KEY': '2e9ba0b5-7df7-4c7f-8d81-3b59b524091d'
    }
  end

  def cryptocurrency_listing
    #url = 'v1/cryptocurrency/quotes/historical'
    #@response = HTTParty.get(@base_uri+url, headers: @headers, format: :plain)
    #@response = JSON.parse @response, symbolize_names: true
    #filter_bitcoin_data

    # for generate dummy data
    Chart.destroy_all if Chart.count      
    generate_data
  end

  def filter_bitcoin_data
    @response[:data].select { |d| d[:name] == 'Bitcoin'}
  end

  def generate_data
    100.times do
      Chart.create(price: rand_price(1000, 6000), start_at: rand_time(1.year.ago, Time.now))
    end
  end

  def rand_price(from, to)
    rand_in_range(from, to).round(2)
  end

  def rand_time(from, to=Time.now)
    Time.at(rand_in_range(from.to_f, to.to_f))
  end

  def rand_in_range(from, to)
    rand * (to - from) + from
  end
end
