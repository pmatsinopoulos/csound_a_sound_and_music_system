<CsoundSynthesizer>
<CsInstruments>
kr = 5        ; 5 times per kontrol period
instr 1
  ; INIT phase
  ; ----------
  print 1
  print 2
  ; --- end of INIT phase ---

  printk 0, 3
  printk 0, 4
endin
schedule(1, 0, 5) ; schedule to run for 5 seconds. 1 / kr is the duration of the
                  ; kontrol period. 5 / (1 / kr) => 5 * kr
                  ; Given that default kr is 4410, then the control statements
                  ; will be executed 5 * 4410 times.
                  ; For kr = 5, then we will have 25 times each kontrol statement.
</CsInstruments>
</CsoundSynthesizer>
