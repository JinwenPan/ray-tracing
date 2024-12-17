CXX = c++
CXX_FLAGS = --std=c++17 -Wall -Wextra -march=native -O3 -lm

all: raytracer

raytracer: raytracer.cpp
	$(CXX) $(CXX_FLAGS) -o raytracer -O3 raytracer.cpp -pthread

clean:
	rm -f raytracer