require "google/cloud/bigquery"
class BigQueryLoad

    bigquery = Google::Cloud::Bigquery.new(
        project_id: "glowing-willow-385615",
        credentials: "./glowing-willow-385615-cf5d9e1d3187.json")

    
    query = <<-SQL
            UPDATE glowing-willow-385615.employee_data_dataset.table_employee_data
            SET first_name = 'hell1o'
            WHERE emp_no = 10001
    SQL

    results = bigquery.query query  do |config|
        config.location = "US"
    end

end
