CXX=clang++
CXXFLAGS=-Wall -O2 -g -std=c++1y
OBJ=obj/
SRCS=$(EXEC).cpp
OBJS=$(patsubst %.cpp, $(OBJ)%.o, $(SRCS))

.PHONY: clean all

all: $(EXEC)

clean:
	rm -rf $(OBJS)

$(EXEC): $(OBJ) $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $@

$(OBJ):
	mkdir $(OBJ)

$(OBJS): $(SRCS)
	$(CXX) $(CXXFLAGS) -o $@ -c $<
