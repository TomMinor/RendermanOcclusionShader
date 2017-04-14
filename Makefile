# Maintained by Cutter.
# For information about customizing the compilation and linking of devkit
# DSOs and executables go to,
#	http://www.fundza.com/cutter/devkit/index.html
# For example, edit this doc and save it as "Makefile.rixpatplugin_LINUX" in the
# "custom_templates/MakeFile" directory of Cutter. It will be used by Cutter instead
# of its default makefile.
# Malcolm Kesson Feb 28 2015
#
STRICT	= -Wall -fPIC -std=gnu++0x
CFLAGS	= ${STRICT} -I/usr/include -I./ -I"${RMANTREE}/include" -I"${RMANTREE}/include"
LDFLAGS	= -export-dynamic -shared
LIBPATH	= -L"${RMANTREE}/lib"
LIBS	= 
OBJS	= PxrOcclusion.o 

.cpp.o :
	g++ $(CFLAGS) -c $<	
.c.o :
	g++ $(CFLAGS) -c $<

all: PxrOcclusion.so

PxrOcclusion.so : ${OBJS}
	g++ -g -fPIC ${LDFLAGS} ${LIBPATH} ${LIBS} ${OBJS} -o $@
	rm ./PxrOcclusion.o
