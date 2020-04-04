import csv
with open('dataset/overview.csv', 'r') as file:
    reader = csv.reader(file)
    for row in reader:
        print(row)
