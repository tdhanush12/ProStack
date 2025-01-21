import json

# Function to read employees from a JSON file
def read_employees(file_name):
    with open(file_name, 'r') as file:
        return json.load(file)

# Function to write employees to a new JSON file
def write_employees(file_name, employees):
    with open(file_name, 'w') as file:
        json.dump(employees, file, indent=4)

# Main function to filter employees by gender
def filter_employees_by_gender(input_file):
    # Read the employees data
    employees = read_employees(input_file)

    # Filter male and female employees
    male_employees = [emp for emp in employees if emp.get('gender') == 'male']
    female_employees = [emp for emp in employees if emp.get('gender') == 'female']

    # Write the filtered data to separate files
    write_employees('male.json', male_employees)
    write_employees('female.json', female_employees)
    print("Data has been written to 'male.json' and 'female.json'.")

# Example usage
if __name__ == "__main__":
    filter_employees_by_gender('emp.json')
