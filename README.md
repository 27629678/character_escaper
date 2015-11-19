# character_escaper
character escaper, used to escape or unescape `semicolon`, `colon`, `comma`, `ctlf` characters, etc.

how to use:

```
NSString *source = @";,\\;\\;\\;:\\:\\n";
XYCharacterEscaper* escaper = [XYCharacterEscaper escaperWithSource:source];
escaper.escapeSemicolon().escapeColon().escapeComma().escapeCTLF();
printf(escaper.value);  // \;\,\;\;\;\:\:\n

escaper.unescapeSemicolon().unescapeColon().unescapeComma().unescapeCTLF();
printf(escaper.value);  // ;,;;;::(\n)
```
