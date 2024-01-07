<CsoundSynthesizer>
  <CsOptions>
    -odac
    --nchnls=2
  </CsOptions>
  <CsInstruments>
    instr 1
      out(oscili(p4, p5))
    endin
    schedule(1, 0, 10, 0dbfs/2, 440)
  </CsInstruments>
  <CsScore>
  </CsScore>
</CsoundSynthesizer>
