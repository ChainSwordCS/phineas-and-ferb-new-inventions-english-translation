import codecs
import csv
from xml.sax.saxutils import quoteattr

incsv = csv.reader(codecs.open("P&F NI Translation Spreadsheet - Sheet1.csv", "r", "utf-8"))
outxml = codecs.open("texts.xml", "w", "utf16")

outxml.write("1250\r\n")
outxml.write("<TEXTCONTAINER>\r\n")

blank = 0 # counter of blank rows

next(incsv) # ignore header row
for row in incsv:
	eng = row[7]
	if eng == "":
		eng = row[0] # blank spots replaced with translation ID
		blank = blank + 1
	outxml.write("  <TEXT id=\""+row[0]+"\" text="+quoteattr(eng)+"/>\r\n")

outxml.write("</TEXTCONTAINER>\r\n")

if blank > 0:
	print("Missing English translation: "+str(blank))

outxml.close()