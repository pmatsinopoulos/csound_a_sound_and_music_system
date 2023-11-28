<CsoundSynthesizer>
<CsInstruments>
kr = 441 ; kr/sr = 441/44100 = 1/100, i.e. 1 control cycle handles 100 samples/frames
instr 1
  out oscili(1000, 400)
endin
schedule(1, 0, 10)
</CsInstruments>
</CsoundSynthesizer>
