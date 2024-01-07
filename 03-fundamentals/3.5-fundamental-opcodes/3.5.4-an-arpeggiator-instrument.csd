<CsoundSynthesizer>
  <CsOptions>
  -odac
  </CsOptions>
  <CsInstruments>
    isize = 16384
    ifn ftgen 1, ; tableNumber
              0, ; time
              isize, ; size
              7, ; igen
              0, isize * 0.1, 1,
                 isize * 0.8, 1,
                isize * 0.1, 0

    ifn ftgen 2, ; tablNumber
              0, ; time
              4, ; size
              -2, ; igen
              1, 1.25, 1.5, 2

    instr 1
      kenv oscili p4, ; amplitude
                  1/p3, ; frequency
                  1 ; table with data
      kpitch table phasor:k(p6), ; index
                  2, ; function table
                  1  ; normalized mode
      asig oscili kenv, ; amplitude
                  p5 * kpitch ; frequency
      out asig
    endin

    schedule(1, ; instrument
             0, ; starting time point
             10, ; duration
             0dbfs/2, ; p4, amplitude
             440, ; p5, frequency
             1) ; p6, argument to phasor

  </CsInstruments>
</CsoundSynthesizer>
