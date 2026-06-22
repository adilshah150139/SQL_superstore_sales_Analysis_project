import csv

with open('Personal SQL Projects/01_sale_project/csv_files/superstore_data.csv', 'r') as file:
    reader = csv.reader(file)
    first_row = next(reader)
    num_columns = len(first_row)
    print(f"number fo columns: {num_columns} ")

