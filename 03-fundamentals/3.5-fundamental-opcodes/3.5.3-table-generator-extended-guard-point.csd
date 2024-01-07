<CsoundSynthesizer>
  <CsOptions>
  -odac
  --nchnls=2
  </CsOptions>
  <CsInstruments>
    itableNumber = 1
    itime = 0
    isize = 16385           ; size of the table
    igen = -5               ; GEN function. Negative means it is not rescaled.
                            ; 05: Constructs functions from segments of exponential curves.
    ifn ftgen itableNumber,
              itime,
              isize,
              igen,
              1, 16384,   ; a n1. This segment is 16384 in size
              2           ; b This segment of size 1 will be 2

    instr 1
      k1 oscili 1, 1/p3, 1
      a1 oscili p4, p5 * k1
      out a1
    endin
    schedule(1, 0, 10, 0dbfs / 2, 440)
  </CsInstruments>
</CsoundSynthesizer>
