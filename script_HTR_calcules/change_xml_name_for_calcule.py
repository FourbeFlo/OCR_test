"""
this script modifies the name of the xml_file inside the xml in the <filename> tag so that it corresponds to the original name of the xml file while retaining the primary file extension. the link between the xml file and the .jpeg/png image etc. is retained. 
"""
"""
script for the htr calcule, WER CER WACC
"""
import os
import xml.etree.ElementTree as ET

directory = 'data'
namespace = {'alto': 'http://www.loc.gov/standards/alto/ns-v4#'}

for filename in filter(lambda f: f.endswith(".xml"), os.listdir(directory)):
    file_path = os.path.join(directory, filename)
    new_file_name = f"{os.path.splitext(filename)[0]}.jpg"

    tree = ET.parse(file_path)
    root = tree.getroot()
    
    file_name_tag = root.find('.//alto:fileName', namespace)
    if file_name_tag is not None:
        file_name_tag.text = new_file_name
        tree.write(file_path, encoding='UTF-8', xml_declaration=True)
        print(f"Updated the fileName tag in {file_path} to {new_file_name}")

print("All files processed.")
