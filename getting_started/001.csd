<CsoundSynthesizer>
  <CsOptions>
    -odac
    --nchnls=1
  </CsOptions>
  <CsInstruments>
    instr 1
      iFreq = p4
      iAmp = p5
      iAtt = 1 ; 1 second attack
      iDec = 1 ; 1 second decay
      iSus = 0.6 ; 60% sustain ?
      iRel = 2 ; 2 seconds release. This is going to be 2 extra seconds in the duration
               ; we give at the instrument instantiation in the CsScore.
      kEnv madsr iAtt, iDec, iSus, iRel
      // vco2 is a voltage controlled oscillator.
      // The default type of waveform created by vco2 is a sawtooth
      aOut vco2 iAmp, iFreq
      out aOut * kEnv
    endin
  </CsInstruments>
  <CsScore>
   i1 0 4 440 32768
  ;  i1 2 1 660 32768
  ;  i1 3 2 880 32768
  </CsScore>
</CsoundSynthesizer>
