# w95tools
Различные утилиты для Windows 95.

## Сборка
Для сборки под Windows 95 сконвертируйте файлы с помощью iconv:

```bash
iconv -f UTF-8 -t CP1251 "MainUnit.pas" > "MainUnit.pas.new"
mv "MainUnit.pas.new" "MainUnit.pas"
```

## git

Для заливки на git наоборот:

```bash
iconv -f CP1251 -t UTF-8 "MainUnit.pas" > "MainUnit.pas.new"
mv "MainUnit.pas.new" "MainUnit.pas"
```
