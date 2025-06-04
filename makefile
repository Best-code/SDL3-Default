CXX = clang++
CXXFLAGS = -F/Library/Frameworks -framework SDL3
LDFLAGS = -Wl,-rpath,/Library/Frameworks

TARGET = proj
SRC = main.cpp

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(SRC) $(CXXFLAGS) $(LDFLAGS) -o $(TARGET)

clean:
	rm -f $(TARGET)
