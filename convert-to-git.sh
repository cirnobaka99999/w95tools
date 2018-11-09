#!/bin/bash
iconv -f CP1251 -t UTF-8 "./Defrag/MainUnit.pas" > "./Defrag/MainUnit.pas.new"
mv "./Defrag/MainUnit.pas.new" "./Defrag/MainUnit.pas"
iconv -f CP1251 -t UTF-8 "./Scandskw/MainUnit.pas" > "./Scandskw/MainUnit.pas.new"
mv "./Scandskw/MainUnit.pas.new" "./Scandskw/MainUnit.pas"

