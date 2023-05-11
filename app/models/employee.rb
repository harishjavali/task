class Employee < ApplicationRecord
    has_many :salaries, foreign_key: 'emp_no'
 after_update :create_bg_info

    def create_bg_info
        BgInfo.create!(table_name: "Employee", table_id: emp_no)
    end
    
    def self.get_data
       Employee.select("YEAR(birth_date) AS year, COUNT(*) AS No_of_birth")
                      .group("year")
                      .order("No_of_birth DESC")
                      .limit(10)
    end
end
