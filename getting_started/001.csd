<CsoundSynthesizer>
  <CsOptions>
    -odac
  </CsOptions>
  <CsInstruments>
    instr 1
      // vco2 is a voltage controlled oscillator.
      // The default type of waveform created by vco2 is a sawtooth
      aOut vco2 0dbfs/4, p4
      out aOut
    endin
  </CsInstruments>
  <CsScore>
   i1 0 2 440
   i1 2 1 880
   i1 3 2 440
  </CsScore>
</CsoundSynthesizer>
