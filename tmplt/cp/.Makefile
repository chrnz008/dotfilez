#Compiler and flags
CXX := g++
CXXFLAGS := #-Wall -std=c++17

# %: %.cpp use this if you dontwanna type .cpp
%.cpp:
	$(CXX) $(CXXFLAGS) $< -o $(basename $@)

.PHONY: rebuild
rebuild: clean all
