<CsoundSynthesizer>
  <CsOptions>
  </CsOptions>
  <CsInstruments>
    instr 1
      i2pi = 6.2838530 ; 2 * π
      aramp init 0     ; audio-rate (44100) variable

      out(sin(aramp * i2pi) * p4) ; sin() is a function that takes a non-negative real number and maps it to [-1..1]
                                  ; p4 is the amplitude
      aramp += a(1/kr) * p5       ; p5 is the tone frequency
      aramp = aramp % 1           ; aramp takes the value between [0..1)
    endin
    schedule(1, 0, 10, 0dbfs/2, 440)
  </CsInstruments>
  <CsScore>
  </CsScore>
</CsoundSynthesizer>
