#!/usr/bin/env python3

import sys
import os
import re
import yaml
import threading
from pathlib import Path

def generate_content(matiere, pdfs, file_path, configs=None):
    content = Path("sample_subject_webpage.html").read_text() 

    auth = "The author"
    desc = "The description"
    title = "The Title"
    print("config : ",configs)
    if configs != None:
        auth = configs["author"]
        desc = configs["description"]
        title = configs["title"]
    content = re.sub('<thedescription>',desc, content)
    content = re.sub('<theauthor>',auth, content)
    content = re.sub('<thetitle>',title, content)
    
    files_link_content=""
    template_link_content= \
"""\t<a href=\"<url>\"><name></a>
\t<p>(<description>)</p>"""
    for pdf in pdfs:
        print(matiere, "pdf file : ", pdf)
        config_file = pdf[:-4]+'.yaml'
        print("pdf config file yaml : ",config_file)
        config_pdf = load_config(config_file)
        name = "Unknown file"
        desc = "Empty description"

        if config_pdf:
            name = config_pdf["name"]
            desc = config_pdf["description"]

        buff = template_link_content
        buff = re.sub('<url>', pdf.split('/')[-1], buff)
        buff = re.sub('<name>', name, buff)
        buff = re.sub('<description>', desc, buff)
        files_link_content += buff +'\n' 
    
    content = re.sub('<thefiles>', files_link_content, content)

    file = open(file_path, "w+")
    file.write(content)
    

def load_config(yaml_configfile):
    try:
        content = open(yaml_configfile)
    except:
        return None
    return yaml.load(content, Loader=yaml.SafeLoader)
    

def list_pdfs(path):
    files = []
    for file in os.listdir(path):
        if file.endswith(".pdf"):
            files.append(os.path.join(path, file))

    return files

threads = []

for line in sys.stdin:
    mat = line.strip()
    print("args : ", mat)
    file_path = "./"+mat+"/index.html"
    pdfs = list_pdfs("./"+mat)
    thread = threading.Thread(target=generate_content, args=(mat, pdfs, file_path, load_config("./"+mat+"/info.yaml")))
    thread.start()
    threads.append(thread)

for thread in threads:
    thread.join()