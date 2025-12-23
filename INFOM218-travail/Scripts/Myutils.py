import sys

def getFileAsArgument() :
    # Check if a filename was passed as an argument
    if len(sys.argv) < 2:
        print("Usage: python script.py <filename>")
        sys.exit(1)
    
    filename = sys.argv[1]
       
    return filename