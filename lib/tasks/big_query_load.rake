namespace :bigquery do
    desc "testing rake"
    task :update_bigquery_data => :environment do    
        require "google/cloud/bigquery"
        bigquery = Google::Cloud::Bigquery.new(
            # establishing big query conection
            project_id: "glowing-willow-385615",
            credentials: "./lib/big_query/glowing-willow-385615-cf5d9e1d3187.json")

        if BgInfo.count > 0
            BgInfo.all.map do |info|
                emp_details = Employee.find(info.table_id)
                # puts emp_details.emp_no
                query = <<-SQL
                    UPDATE glowing-willow-385615.employee_data_dataset.table_employee_data
                    SET first_name = "#{emp_details.first_name}"
                    WHERE emp_no = #{emp_details.emp_no}
                    SQL

                    results = bigquery.query query  do |config|
                         # Location must match that of the dataset(s) referenced in the query.
                        config.location = "US"
                    end
            end
        end
    end
end
