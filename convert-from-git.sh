#!/bin/bash
iconv -f UTF-8 -t CP1251 "./Defrag/MainUnit.pas" > "./Defrag/MainUnit.pas.new"
mv "./Defrag/MainUnit.pas.new" "./Defrag/MainUnit.pas"
iconv -f UTF-8 -t CP1251 "./Scandskw/MainUnit.pas" > "./Scandskw/MainUnit.pas.new"
mv "./Scandskw/MainUnit.pas.new" "./Scandskw/MainUnit.pas"

