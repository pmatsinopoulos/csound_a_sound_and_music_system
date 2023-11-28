# Variables
CXX=g++
CXXFLAGS=-I /Library/Frameworks/CsoundLib64.framework/Headers
LDFLAGS=-F /library/Frameworks -framework CsoundLib64
SRC=0009-simple-csound-api-example.cpp
OBJ=$(SRC:.cpp=.o)
EXEC=0009

# Default target
all: $(EXEC)

# Linking
$(EXEC): $(OBJ)
	$(CXX) $(OBJ) -o $(EXEC) $(LDFLAGS)

# Compilation
.cpp.o:
	$(CXX) -c $< -o $@ $(CXXFLAGS)

# Clean
clean:
	rm -f $(OBJ) $(EXEC)
