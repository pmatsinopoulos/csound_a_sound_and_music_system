<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>

instr 1

prints "\tHello World\n"
prints " "
print strlen("Hello World")
prints {{
  This is a test with
  multiple lines
}}
SmyName = "Panos Matsinopoulos"
prints "Name: %s\n", SmyName
S1 = p4
S2 sprintf {{
This is p4: \"%s\".
It is a string with %d characters.
}}, S1, strlen(S1)
prints S2

endin ; 1

</CsInstruments>
<CsScore>
i 1 0 1 "Hello World!!!"
</CsScore>
</CsoundSynthesizer>
