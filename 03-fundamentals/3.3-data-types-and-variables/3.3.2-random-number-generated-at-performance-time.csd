<CsoundSynthesizer>
  <CsOptions>
  </CsOptions>
  <CsInstruments>
    instr 1
      iMax = 10
      print iMax

      printk 0.1, rnd(k(iMax))
    endin
    schedule(1, 0, 1)
  </CsInstruments>
  <CsScore>
  </CsScore>
<CsoundSynthesizer>
