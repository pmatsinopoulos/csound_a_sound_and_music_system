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
      iCutoff = 5000
      iRes = .4

      kEnv madsr iAtt, iDec, iSus, iRel ; gives a new value on each kontrol signal

      ; vco2 is a voltage controlled oscillator.
      ; The default type of waveform created by vco2 is a sawtooth
      aVco vco2 iAmp, iFreq
      ; We use the envelope kEnv to build the Low Pass generated audio signals
      aLp moogladder aVco, iCutoff * kEnv, iRes
      ; We use the envelope kEnv to build further amplitude modulation for the Low Pass generated audio signals
      out aLp * kEnv
    endin
  </CsInstruments>
  <CsScore>
   i 1 0 4 440 32768
  ;  i 1 2 1 660 32768
  ;  i 1 3 2 880 32768
  </CsScore>
</CsoundSynthesizer>
