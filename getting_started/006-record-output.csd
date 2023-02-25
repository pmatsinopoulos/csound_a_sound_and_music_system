<CsoundSynthesizer>
  <CsOptions>
    -odac
    --nchnls=2
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
      out aLp * kEnv, aLp * kEnv
    endin
    instr 1000
      aLeftMon, aRigtMon monitor
      fout "fout_all.wav", 14, aLeftMon, aRigtMon
    endin
  </CsInstruments>
  <CsScore>
    i 1 0 3 440 32768
    i 1000 0 5
  </CsScore>
</CsoundSynthesizer>
