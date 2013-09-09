#Client maintainer: name@email
set(CTEST_SITE "$ENV{HOST_NAME}.rackspace")
set(CTEST_BUILD_NAME "RHEL6.1-Cache")
set(dashboard_cache "
VISTA_GLOBALS_DIR:PATH=$ENV{VistAGlobalsDir}
VISTA_ROUTINE_DIR:PATH=$ENV{VistARoutines}
AUTOMATED_UNIT_TESTING:BOOL=OFF
INSTALL_MUNIT:BOOL=OFF
MUNIT_KIDS_FILE:FILEPATH="$ENV{HOME}/OSEHRA/Dashboards/M-Tools/XT_7-3_81.KID"
MUNIT_PACKAGE_INSTALL_NAME:STRING=XT*7.3*81
CLEAN_DATABASE:BOOL=ON
USE_XINDEX_WARNINGS_AS_FAILURES:BOOL=ON
VISTA_CPRS_FUNCTIONAL_TESTING:BOOL=OFF
 ")
#Where the files from git will be placed
set(CTEST_DASHBOARD_ROOT $ENV{HOME}/OSEHRA/Dashboards)

#Path to the Git Executable.
set(CTEST_GIT_COMMAND /usr/bin/git)
include(${CTEST_SCRIPT_DIRECTORY}/vista_common.cmake)
