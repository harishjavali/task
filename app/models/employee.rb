class Employee < ApplicationRecord
 after_update :create_bg_info

    def create_bg_info
        BgInfo.create!(table_name: "Employee", table_id: emp_no)
    end
    
    def self.get_data
       Employee.select("YEAR(birth_date) AS year, COUNT(*) AS count1")
                      .group("year")
                      .order("count1 DESC")
                      .limit(10)
    end
end
