<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
nchnls = 2

instr 1
  p3 = filelen(p4)
  ich = filenchnls(p4)
  if ich == 1 then
    asig1 diskin p4
    asig2 = asig1
  else
    asig1, asig2 diskin p4
  endif
  out asig1, asig2
endin
</CsInstruments>
<CsScore>
i 1 0 1 "01_czerny.wav"
e
</CsScore>
</CsoundSynthesizer>
