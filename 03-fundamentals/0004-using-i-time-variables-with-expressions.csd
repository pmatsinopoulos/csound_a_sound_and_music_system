<CsoundSynthesizer>
<CsInstruments>
instr 1
  ires = p(4) + p(5)
  print ires
  ires = p(4) * p(5)
  print ires
endin
schedule(1, 0, 1, 10, 30)
</CsInstruments>
</CsoundSynthesizer>
