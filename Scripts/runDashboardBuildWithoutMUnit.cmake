#Client maintainer: name@email
set(CTEST_SITE "$ENV{HOST_NAME}")
set(CTEST_BUILD_NAME "CentOS-6.4-GT.M")
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")

#Where the files from git will be placed
set(CTEST_DASHBOARD_ROOT $ENV{HOME}/OSEHRA/Dashboards)

set(dashboard_cache "
GTMPROFILE:PATH=$ENV{gtmprofilefile}
VISTA_GLOBALS_DIR:PATH=$ENV{VistAGlobalsDir}
VISTA_ROUTINE_DIR:PATH=$ENV{VistARoutines}
AUTOMATED_UNIT_TESTING:BOOL=OFF
INSTALL_MUNIT:BOOL=OFF
MUNIT_KIDS_FILE:FILEPATH="$ENV{HOME}/OSEHRA/Dashboards/M-Tools/XT_7-3_81.KID"
MUNIT_PACKAGE_INSTALL_NAME:STRING=XT*7.3*81
CLEAN_DATABASE:BOOL=ON
USE_XINDEX_WARNINGS_AS_FAILURES:BOOL=ON
VISTA_CPRS_FUNCTIONAL_TESTING:BOOL=OFF
TEST_VISTA:BOOL=ON
 ")

set(TEST_VISTA ON)
set(CTEST_SOURCE_DIRECTORY "${CTEST_DASHBOARD_ROOT}/VistA")
set(CTEST_BINARY_DIRECTORY "${CTEST_DASHBOARD_ROOT}/VistA-build")
set(CTEST_COMMAND "$ENV{HOME}/cmake/bin/bin/ctest")
set(PYTHON_EXECUTABLE "/usr/local/bin/python2.7")

#Path to the Git Executable.
set(CTEST_GIT_COMMAND /usr/bin/git)
#include(${CTEST_SCRIPT_DIRECTORY}/vista_common.cmake)
ctest_start("Experimental")
ctest_configure()
ctest_build()
