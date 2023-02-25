<CsoundSynthesizer>
  <CsOptions>
    -odac
  </CsOptions>
  <CsInstruments>
    instr 1
      iFreq = p4
      iAmp = p5
      // vco2 is a voltage controlled oscillator.
      // The default type of waveform created by vco2 is a sawtooth
      aOut vco2 iAmp, iFreq
      out aOut
    endin
  </CsInstruments>
  <CsScore>
   i1 0 2 440 32768
   i1 2 1 880 8192
   i1 3 2 440 32768
  </CsScore>
</CsoundSynthesizer>
