<CsoundSynthesizer>
  <CsOptions>
    -odac
  </CsOptions>
  <CsInstruments>
    sr = 44100
    ksmps = 32 ; kr = 44100 / 32 => kr = 1378.125
    nchnls = 2
    0dbfs = 1

    instr 1
      prints "\nPlaying %d Hertz\n\n", p4
      asig poscil .2, p4
      out asig, asig
    endin
  </CsInstruments>
  <CsScore>
    i 1 0 2 10
    i . + . 27.50 ; A0, first note in piano 88 keyboard
    i . + . 100
    i . + . 1000
    i . + . 4186.01 ; C8, last note in piano 88 keyboard
    i . + . 10000
    i . + . 20000
  </CsScore>
</CsoundSynthesizer>
