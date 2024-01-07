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

  aosc oscili ampdbfs(idb), ; amplitude
              cpspch(p5)

  asig linen aosc, ; amplitude from DB
             irise,
             idur,
             idec

  out asig
endin
schedule(1,
         0,
         10,   ; idur, p3
         -6,   ; idb, p4
         8.09, ; ipch, p5
         5, ; irise, p6
         5)  ; idec, p7
</CsInstruments>
</CsoundSynthesizer>
