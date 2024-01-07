<CsoundSynthesizer>
<CsInstruments>
instr 1
  iA = p4
  iF = p5
  aramp init 0
  aramp += a(1 / p5)
  aramp %= 1
  aramp *= iA
  out()
endin
schedule(1, 0, 10, 0dbfs / 2, 440)
</CsInstruments>
</CsoundSynthesizer>
