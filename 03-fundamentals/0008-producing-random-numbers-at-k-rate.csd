<CsoundSynthesizer>
<CsInstruments>
instr 1
  imax = 10
  printk 1/kr, rnd(k(imax))
endin
schedule(1, 0, 1/kr * 20)
</CsInstruments>
</CsoundSynthesizer>
