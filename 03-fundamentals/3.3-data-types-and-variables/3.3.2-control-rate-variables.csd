<CsoundSynthesizer>
  <CsOptions>
  </CsOptions>
  <CsInstruments>
    instr 1
      kvar init 10
      ivar = i(kvar)
      print ivar
    endin
    schedule(1, 0, 0)
  </CsInstruments>
  <CsScore>
  </CsScore>
<CsoundSynthesizer>
