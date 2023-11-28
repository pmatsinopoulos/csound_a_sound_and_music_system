<CsoundSynthesizer>
<CsInstruments>
ksmps = 64 ; 44100/kr = 64 => kr = 44100/64 => 689.0625
nchnls = 2
instr 1
  out rand(1000), oscili(1000, 440)
endin
schedule(1, 0, 10)
</CsInstruments>
</CsoundSynthesizer>
