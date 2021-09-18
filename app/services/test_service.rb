class TestService < ApplicationService
  require "google/cloud/bigquery"
  ENV["GOOGLE_APPLICATION_CREDENTIALS"] = "bigquery-learn-test-860b6e369f13.json"

  def initialize(name="")
    @name = name
  end

  def call
    bigquery = Google::Cloud::Bigquery.new
     sql = "SELECT * FROM `bigquery-learn-test.teset_dataset.top_10_tech`" \
           "LIMIT 100"

     results = bigquery.query(sql)

     results.each do |row|
       puts row.inspect
     end
  end
end
