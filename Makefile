#
# **************************************************************
# *         C++ Mathematical Expression Toolkit Library        *
# *                                                            *
# * Author: Arash Partow (1999-2017)                           *
# * URL: http://www.partow.net/programming/exprtk/index.html   *
# *                                                            *
# * Copyright notice:                                          *
# * Free use of the Mathematical Expression Toolkit Library is *
# * permitted under the guidelines and in accordance with the  *
# * most current version of the MIT License.                   *
# * http://www.opensource.org/licenses/MIT                     *
# *                                                            *
# **************************************************************
#


OPTIMIZATION_OPT = -ffast-math -ftree-vectorize -mtune=native -march=native -O3
BASE_OPTIONS     = -Wno-long-long -std=c++11
OPTIONS          = $(BASE_OPTIONS) $(OPTIMIZATION_OPT)
LINKER_OPT       = -L/usr/lib -lstdc++ -lm

BUILD_LIST+=exprtk_benchmark
BUILD_LIST+=exprtk_vector_benchmark


all: $(BUILD_LIST)

$(BUILD_LIST) : %: %.cpp exprtk.hpp
	$(CC) $(OPTIONS) -o $@ $@.cpp $(LINKER_OPT)

clean:
	rm -f core.* *~ *.o *.bak *stackdump gmon.out *.gcda *.gcno *.gcnor *.gch
