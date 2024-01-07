<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
instr 1
  idur = p3
  idb  = p4
  ipch = p5

  kenvamp expon 1, idur, 0.001
  kenvp expon 2, idur, 1

  asig oscili kenvamp * ampdbfs(idb), kenvp * cpspch(ipch)

  out asig
endin
schedule(1, 0, 10, -6, 8.09)
</CsInstruments>
</CsoundSynthesizer>
