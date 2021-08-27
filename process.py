# opens the file in python
log_file = open("um-server-01.txt")

# defining a function 
def sales_reports(log_file): 
    # looping through each line of the file
    for line in log_file:
        # setting line = to the method that removes white spaces at the end of the string
        line = line.rstrip()
        # setting day = to line at index 0:3
        day = line[0:3]
        # declaring an if statement if day = Mon then it will print the line
        if day == "Mon":
            print(line)

# calling the function
sales_reports(log_file)


