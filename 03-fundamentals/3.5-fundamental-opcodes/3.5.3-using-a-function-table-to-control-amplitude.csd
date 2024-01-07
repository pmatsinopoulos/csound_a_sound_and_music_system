<CsoundSynthesizer>
  <CsOptions>
    -odac
  </CsOptions>
  <CsInstruments>
    isize = 16384 ; this is 2 ** 14
    ifn ftgen 1, 0, isize, -7,
              0, isize * 0.1, 1,
                 isize * 0.8, 1,
                 isize * 0.1, 0
      ; table has 16384 points:
      ;    first 1638 points are from 0 to 1 in a linear increment,
      ;    then 13107 points are 1,
      ;    then 1638 points are from 1 down to 0 in a linear interpolation.

    instr 1
      kenv oscili p4,   ; amplitude
                  1/p3, ; frequency of reading from the table?, e.g. 1/10 where 10 whole duration
                  1
                        ; increment when reading from one position to the
                        ; next is l/sr X f0 -> 16384 / 44100 * 1 / 10
      asig oscili kenv, ; amplitude
                  p5    ; frequency
      out asig
    endin
    schedule(1, 0, 10, 0dbfs, 440)
  </CsInstruments>
  <CsScore>
  </CsScore>
</CsoundSynthesizer>
