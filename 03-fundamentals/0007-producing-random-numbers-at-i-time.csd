<CsoundSynthesizer>
<CsInstruments>
instr 1
  imax = 10 ; init phase
  printk 1/kr, rnd(imax)
endin
schedule(1, 0, 1 / kr * 20)
</CsInstruments>
</CsoundSynthesizer>
