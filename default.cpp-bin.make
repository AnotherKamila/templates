CPPFLAGS = --std=c++0x -W -Wall -Wextra -pedantic -O2

# the following adds debug flags unless the (environment) variable NODEBUG is defined
ifeq ($(NODEBUG),)
	DEBUGFLAGS = -g -DEBUG
endif

%.bin: %.cpp
	g++ $(CPPFLAGS) $(DEBUGFLAGS) -o $*.bin $*.cpp
