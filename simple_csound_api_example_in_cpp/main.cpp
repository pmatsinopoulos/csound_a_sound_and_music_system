#include <CsoundLib64/csound.hpp>

int main(int argc, const char** argv) {
  Csound csound; // csound object
  int error; // error code

  // compile CSD and start the engine
  error = csound.Compile(argc, argv);

  while (!error)
  {
    error = csound.PerformKsmps();
  }

  return 0;
}
