<CsoundSynthesizer>
  <CsOptions>
  </CsOptions>
  <CsInstruments>
    instr 1
      // init phase
      ires = p(4) + p(5)
      print ires
      ires = p(4) * p(5)
      print ires
    endin
    schedule(1, 0, 1, 8, 10) ; will have to Ctrl-C to stop the script from running
  </CsInstruments>
  <CsScore>
  </CsScore>
</CsoundSynthesizer>
