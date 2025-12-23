import json
import os
import Myutils

    #This method needs the filename to be passed as an command line argument
def count_queries_per_type(file_path):
    try:
        with open(file_path, 'r') as sqlInspectExtractedQueries :
            content = json.load(sqlInspectExtractedQueries)
            
    except FileNotFoundError:
          print(f"Error: '{filename}' not found.")
    except Exception as e:
        print(f"Error: {e}")
    
    
    query_count = {
        "SELECT" : 0,
        "UPDATE" : 0,
        "DELETE" : 0,
        "CREATE" : 0,
        "DROP" : 0,
        "INSERT" : 0,
        "VACUUM" : 0
    }
    
    for query in content['Queries'] :
        query_value = query['Value'].strip().upper()
        
        
        for q_type in query_count.keys() :
            if query_value.startswith(q_type) :
                query_count[q_type] +=1
                break
            
    return query_count
         
if __name__ == "__main__" :
    script_dir = os.path.dirname(__file__)
    filename = Myutils.getFileAsArgument()
    file_path = os.path.join(script_dir, filename)
    
    q_count = count_queries_per_type(file_path)
    
    
    for q_type, amount in q_count.items():
        print(f"{q_type} : {amount}")