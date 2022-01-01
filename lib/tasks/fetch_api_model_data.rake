desc 'Pull market information from the AlphaVantage api and IEX Cloud api'

task fetch_api_model_data: :environment do
  client = Alphavantage::Client.new key: ENV['ALPHA_VANTAGE_KEY']
  client2 = StockQuote::Stock.new(api_key: ENV['STOCK_KEY'])

  
  #list_of_companies = %w[QYLD AAPL BXMT MSFT F FRT RY O ABR ACRE JEPI AGNC MAIN NUSI PDI SUNS ARCC RYLD DIVO PFFA SCHD SMG UVV OKE PM PSX PNW LYB CVX SAFT NWE ALE OMC GILD AEP PFG IRM BKH LAMR REG BOH KMB MMM MRK LMT SJM WEC CHCO AOS ABT ABBV AFL ALB AMCR ADM T ATO ADP BDX BF-B CAH CAT CB CINF CTAS CLX KO CL ED DOV ECL EMR ESS EXPD XOM BEN GD GPC HRL ITW IBM JNJ KMB LEG LIN LOW MKC MCD MDT NEE NUE PNR PBCT PEP PPG PG ROP SPGI SHW SWK SYY TROW TGT VFC GWW WBA WMT WST ABM MO PH]

  list_of_companies = %w[BXMT O]

  company_list = list_of_companies.sort

  company_list.each do |company|
    stock = StockQuote::Stock.company(company)
    puts stock.company_name
    puts stock.sector
    puts stock.description
    puts stock.tags
    puts company
  end
end
