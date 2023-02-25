<CsoundSynthesizer>
  <CsOptions>
    -odac
    --nchnls=1
  </CsOptions>
  <CsInstruments>
    instr 1
      kres random 1, 5
      printk2 kres
    endin
  </CsInstruments>
  <CsScore>
    i1 0 0.0022675736961451248 ; this is 10 x 1/kr => hence its going to print 10 times the +kres+ variable
  </CsScore>
</CsoundSynthesizer>
