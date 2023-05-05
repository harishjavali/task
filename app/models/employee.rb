class Employee < ApplicationRecord
#  def haha
#     r = hello
#     r.each do |result|
#         puts "#{result.year}, #{result.count1}"
#         # year = result.year
#         # count = result.count1
#         # Do something with the year and count
#       end
#  end
    def self.get_data
       Employee.select("YEAR(birth_date) AS year, COUNT(*) AS count1")
                      .group("year")
                      .order("count1 DESC")
                      .limit(10)
    end
end
