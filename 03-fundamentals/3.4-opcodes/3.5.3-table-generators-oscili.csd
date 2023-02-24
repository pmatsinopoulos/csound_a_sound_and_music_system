<CsoundSynthesizer>
  <CsOptions>
    -odac
  </CsOptions>
  <CsInstruments>
    inum = 1
    itime = 0
    isize = 16385
    igen = -5
    ipar1 = 1
    ipar2 = 16384
    ipar3 = 2
    ifn ftgen inum, itime, isize, igen, ipar1, ipar2, ipar3

    instr 1
      k1 oscili 1, 1/p3, 1 ; we pass the "1" as the table number to start from
      a1 oscili p4, p5 * k1
      out a1
    endin
    schedule(1, 0, 10, 0dbfs/2, 440)
  </CsInstruments>
  <CsScore>
  </CsScore>
</CsoundSynthesizer>
