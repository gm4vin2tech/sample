class UserJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    require 'csv'
    headers = ['col_1', 'col_2', 'col_3']
    csv_data = CSV.generate(headers: true) do |csv|
      csv << headers
      csv << ["abc", "bds", "ded"]
    end
    print "..............................."
    print csv_data
    print "..............................."
  end
end
