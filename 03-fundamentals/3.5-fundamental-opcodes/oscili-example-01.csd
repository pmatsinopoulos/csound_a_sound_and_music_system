<CsoundSynthesizer>
  <CsOptions>
    -odac
  </CsOptions>

  <CsInstruments>

    sr = 44100
    ksmps = 32 ; 32 audio samples per kontrol cycle
    nchnls = 2
    0dbfs = 1 ; why not 32768.0 ?

    instr 1
      kamp = 0.6 ; amplitude
      kcps = 440 ; the frequency we will be reading data from the table?
      ifn = p4   ; we will pass the function table as a param to the score calling this instrument

      asig oscil kamp,
                 kcps,
                 ifn ; the table we will read data from

      outs asig, asig ; writes stereo to an external device or stream
    endin
  </CsInstruments>
  <CsScore>
  f 1 0 128 10 1

  i 1  0 20 1
  </CsScore>
</CsoundSynthesizer>
