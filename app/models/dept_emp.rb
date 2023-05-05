class DeptEmp < ApplicationRecord
    self.table_name = 'dept_emp'
    belongs_to :employee, foreign_key: 'emp_no'
    belongs_to :department, foreign_key: 'dept_no'
end
