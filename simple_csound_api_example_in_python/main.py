import ctcsound
import sys

cs = ctcsound.Csound()
error = cs.compile_(sys.argv)

while (not error):
    error = cs.performKsmps()
cs.cleanup()
del cs
sys.exit(error)
