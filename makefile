# simple make file

SOURCES= function1.f90 function2.f90 main.f90
PRODUCT=a.out

OBJECTS = $(addsuffix .o,$(basename $(SOURCES)))

#GIT_VERSION := $(shell git describe --abbrev=4 --dirty --always --tags)

FCFLAGS = -O2 -Wall -cpp #-DDEBUG
F90= gfortran


all: $(PRODUCT)

rebuild: clean all

$(PRODUCT): $(OBJECTS)
	$(F90) $(LDFLAGS) $(OBJECTS) -o $@

%.o: %.f90 
	$(F90) -c $(FCFLAGS) -o $@ $<


clean:
	rm -f *.o *.mod $(PRODUCT)

