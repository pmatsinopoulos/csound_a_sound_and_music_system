<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
instr 1
  idur  = p3
  idb   = p4
  ipch  = p5
  irise = p6
  idec  = p7

  kenv linen ampdbfs(idb), ; amplitude from DB
             irise,
             idur,
             idec
  asig oscili kenv, ; amplitude
              cpspch(p5)
  out asig
endin
schedule(1,
         0,
         10,   ; idur, p3
         -6,   ; idb, p4
         8.09, ; ipch, p5
         0.01, ; irise, p6
         0.1)  ; idec, p7
</CsInstruments>
</CsoundSynthesizer>
