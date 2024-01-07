<CsoundSynthesizer>
<CsInstruments>
instr 1
  print p(4)
  print p(5)
endin
schedule(1, 0, 1, 22, 33)
schedule(1, 1, 1, 44, 55) ; 2nd event, means new instance of instrument "1"
</CsInstruments>
</CsoundSynthesizer>
