<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
instr 1
  iamp = ampdbfs(p4)
  ipitch = cpspch(p5)
  out(oscili(iamp, ipitch))
endin
</CsInstruments>
<CsScore>
i 1 0 10 -24 8.09
e
</CsScore>
</CsoundSynthesizer>
