#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=mpicc
CCC=mpic++
CXX=mpic++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MPI-MacOSX
CND_CONF=Debug
CND_DISTDIR=dist

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=build/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/mpi4ncl.o


# C Compiler Flags
CFLAGS=-std=c99

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-Debug.mk dist/libmpi4ncl.so

dist/libmpi4ncl.so: ${OBJECTFILES}
	${MKDIR} -p dist
	${LINK.c} -dynamiclib -install_name libmpi4ncl.so -o ${CND_DISTDIR}/libmpi4ncl.so -fPIC ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/mpi4ncl.o: mpi4ncl.c 
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.c) -g -I${NCARG_ROOT}/include -I../../../local/ncarg/include -I/usr/local/ncl_ncarg-6.0.0b/include -fPIC  -o ${OBJECTDIR}/mpi4ncl.o mpi4ncl.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Debug
	${RM} dist/libmpi4ncl.so

# Subprojects
.clean-subprojects:
