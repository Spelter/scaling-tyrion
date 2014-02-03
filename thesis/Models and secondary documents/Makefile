DIRECTORYS = $(wildcard */)
.PHONY : all

all:
	$(foreach dir, ${DIRECTORYS}, (make -C ${dir} move) &&) :
