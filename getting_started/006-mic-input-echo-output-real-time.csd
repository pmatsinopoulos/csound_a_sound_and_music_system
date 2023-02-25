<CsoundSynthesizer>
  <CsOptions>
    -odac
    -iadc
    ; --nchnls=2
  </CsOptions>
  <CsInstruments>
    instr 1
      aInL inch 1
      aInR inch 2
      aCombL comb aInL, 3, .5
      aCombR comb aInR, 3, .7
      out aCombL, aCombR
    endin
  </CsInstruments>
  <CsScore>
    i 1 0 1000
  </CsScore>
</CsoundSynthesizer>
