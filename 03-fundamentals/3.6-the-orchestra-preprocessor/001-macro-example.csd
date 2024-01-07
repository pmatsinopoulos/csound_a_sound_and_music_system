<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
#define DURATION #p3#
#define OCTAVE #8.#
#define ENV #expon#

instr 1
  kenv $ENV 1, $DURATION, 0.001
  kpit $ENV 2, $DURATION, 1
  asig oscili kenv * ampdbfs(p4), kpit * cpspch(p5)
  out asig
endin
schedule(1, 0, 10, -6, $OCTAVE.09)
</CsInstruments>
</CsoundSynthesizer>
