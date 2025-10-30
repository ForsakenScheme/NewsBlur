import json
import os
import re

def count_queries_per_type(file_path):
    with open(file_path, 'r') as sqlInspectExtractedQueries :
        content = json.load(sqlInspectExtractedQueries)
    
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
    file_path = os.path.join(script_dir, 'NewsBlur-queries.json')
    print(f"looking for file at : {file_path}")
    
    q_count = count_queries_per_type(file_path)
    
    
    for q_type, amount in q_count.items():
        print(f"{q_type}, {amount}")