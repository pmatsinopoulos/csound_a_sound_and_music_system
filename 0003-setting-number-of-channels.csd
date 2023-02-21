<CsoundSynthesizer>
  <CsOptions>
    -odac
    --nchnls=2
  </CsOptions>
  <CsInstruments>
    instr 1
      out rand(1000), oscili(1000, 440)
    endin
  </CsInstruments>
  <CsScore>
    i 1 0 1
  </CsScore>
</CsoundSynthesizer>
