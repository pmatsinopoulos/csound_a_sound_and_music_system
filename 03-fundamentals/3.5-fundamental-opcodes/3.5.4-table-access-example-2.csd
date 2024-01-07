<CsoundSynthesizer>
  <CsOptions>
  -odac
  --nchnls=2
  </CsOptions>
  <CsInstruments>
  itableNumber = 2
  itime = 0
  isize = 4
  igen = -2 ; no rescaling. Trasfers data from immediate pfields into a function table.

  ifn ftgen itableNumber,
            itime,
            isize,
            igen,
            1.00,
            1.25,
            1.50,
            2.00

  itab table 2, ifn

  print itab
  </CsInstruments>
</CsoundSynthesizer>
