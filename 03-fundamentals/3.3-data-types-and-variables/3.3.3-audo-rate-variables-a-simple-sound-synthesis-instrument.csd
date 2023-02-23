<CsoundSynthesizer>
  <CsOptions>
  </CsOptions>
  <CsInstruments>
    instr 1
      aramp init 0 ; ksmps elements

      out((2 * aramp - 1) * p4)
      aramp += a(1/kr) * p5 ; I don't understand the pitch setting to 440
      aramp = aramp % 1 ; makes aramp move from 0 to 1
    endin
    schedule(1, 0, 10, 0dbfs/2, 440)
  </CsInstruments>
  <CsScore>
    ; i 1 0 1
  </CsScore>
<CsoundSynthesizer>
