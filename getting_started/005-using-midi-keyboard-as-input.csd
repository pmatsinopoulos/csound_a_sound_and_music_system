<CsoundSynthesizer>
  <CsOptions>
    -odac
    -Ma
    --midi-key-cps=4
    --midi-velocity-amp=5
    --nchnls=2
  </CsOptions>
  <CsInstruments>
  instr 1
    iFreq = p4
    iAmp = p5
    iAtt = 0.1
    iDec = 0.4
    iSus = 0.6
    iRel = 0.7
    iCutoff = 5000
    iRes = .4

    ; MIDI ADSR (envelope)
    kEnv madsr iAtt, iDec, iSus, iRel

    ; Originally generated signal
    aVco1 vco2 iAmp, iFreq
    aVco2 vco2 iAmp, iFreq * .99
    aVco = (aVco1 + aVco2) / 2

    ; Low Pass Filter using the envelope
    aLp moogladder aVco, iCutoff * kEnv, iRes

    ; Output the Low Pass Filter but with an envelope again
    out aLp * kEnv
  endin
  </CsInstruments>
  <CsScore>
  </CsScore>
</CsoundSynthesizer>
