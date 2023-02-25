<CsoundSynthesizer>
  <CsOptions>
    -odac
    --nchnls=1
  </CsOptions>
  <CsInstruments>
    instr 1
      iAtt = .1 ; .1 second attack
      iDec = .2 ; .2 second decay
      iSus = 0.6 ; 60% sustain ?
      iRel = 0.0045351473922902496 ; 2 x (1/kr x 10)

      kEnv madsr iAtt, iDec, iSus, iRel ; gives a new value on each kontrol signal
      printk2 kEnv
    endin
  </CsInstruments>
  <CsScore>
   i 1 0 0.0022675736961451248
   ; The duration is 1/kr x 10 second. This means that we are going to have
   ; 10 print outputs for the given duration.
   ; Then the Release phase of the MIDI ADSR envelope kicks in, which is
   ; double the time of the duration given. This means that 20 print outputs
   ; will be output during this phase. Hence 30 outputs in total
  </CsScore>
</CsoundSynthesizer>
