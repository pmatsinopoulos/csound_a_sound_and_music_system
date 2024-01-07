<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
instr 1
  aout oscili 0dbfs, ; amplitude
              440 + random(-8, 12)
  outs aout
endin
schedule(1, 0, 10)
</CsInstruments>
</CsoundSynthesizer>
