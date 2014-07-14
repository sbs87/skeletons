values=(1,2,3)

print "\n"

##  For loops
print "#### For loop: ####"
for value in values:
        print value
print "\n"

## Reading in files
print "#### Reading in and printing files: ####"
f=open("file_in.txt")
lines = f.readlines() # reads in all lines, including retrns and tab delimits.
headers = lines[0].rstrip().split("\t") #splits the value of lines based on tab delimits, after stripping the carraige return
print headers
vectors = [line.rstrip().split("\t") for line in lines] # stores remaining values into array
print vectors
f.close()
print "\n"

## A function
print "#### Demo a function: ####"
def calc_mean(vals):
    sum=0
    count=0
    for val in vals:
        sum=sum+float(val)
        count=count+1
    m=sum/count
    return(m)
print("The sum of all the values, using a function is: ",calc_mean(values))
print "\n"