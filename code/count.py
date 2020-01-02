#!/usr/env/python-
# coding: utf-8

import unidecode
from collections import defaultdict



d = defaultdict(lambda:0)
total = 0

fh=open("ListaTodasPalabras.csv")

# count the total words and the letters
for word in fh.readlines():
    total += 1
    noacc = unidecode.unidecode(word)
    for letter in noacc.strip():
        d[letter] += 1

# Close the file bro
fh.close()

print("Letter frequency from least to most")
s = {k: v for k, v in sorted(d.items(), key=lambda item: item[1])}
for item,val in s.items():
    print(f"{item} : {val}")

print("Total words counted")
print(total)
