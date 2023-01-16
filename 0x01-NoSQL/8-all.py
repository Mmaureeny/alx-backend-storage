#!/usr/bin/env python3
'''8-all
'''

def list_all(mongo_collection):
    '''Python function that lists all documents in a collection.
    '''
    return [docu for docu in mongo_collection.find()]
