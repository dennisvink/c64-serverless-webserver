import os
import json
from os.path import exists

def handler(event, context):
    path = event["path"].split("/")
    if(path[1]):
        if(exists(path[1] + ".bas")):
            response = os.popen('./cbmbasic ' + path[1] + ".bas").read()
        else:
            response = os.popen('./cbmbasic 404.bas').read()
    else:
        response = os.popen('./cbmbasic index.bas').read()
    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "text/html"
        },
        "body": response
    }
