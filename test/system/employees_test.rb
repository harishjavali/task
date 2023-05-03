require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    visit employees_url
    click_on "New employee"

    fill_in "Birth date", with: @employee.birth_date
    fill_in "Emp no", with: @employee.emp_no
    fill_in "First name", with: @employee.first_name
    fill_in "Gender", with: @employee.gender
    fill_in "Hire date", with: @employee.hire_date
    fill_in "Last name", with: @employee.last_name
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    visit employee_url(@employee)
    click_on "Edit this employee", match: :first

    fill_in "Birth date", with: @employee.birth_date
    fill_in "Emp no", with: @employee.emp_no
    fill_in "First name", with: @employee.first_name
    fill_in "Gender", with: @employee.gender
    fill_in "Hire date", with: @employee.hire_date
    fill_in "Last name", with: @employee.last_name
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    visit employee_url(@employee)
    click_on "Destroy this employee", match: :first

    assert_text "Employee was successfully destroyed"
  end
end
