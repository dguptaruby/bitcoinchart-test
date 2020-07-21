namespace :chart do
  desc "Fetch Bitcon Data and update database"
  task update: :environment do
    ob = CoinMarketCap.new
    response = ob.cryptocurrency_listing
    puts response
  end
end
