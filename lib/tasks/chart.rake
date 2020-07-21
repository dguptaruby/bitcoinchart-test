namespace :chart do
  desc "Fetch Bitcon Data and update database"
  task update: :environment do
    ob = CoinMarketCap.new
    ob.cryptocurrency_listing
  end
end
