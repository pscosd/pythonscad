# Get OPENSCAD_VERSION
if ("${OPENSCAD_VERSION}" STREQUAL "")
  if (EXISTS "${CMAKE_SOURCE_DIR}/VERSION.txt")
    file(READ "${CMAKE_SOURCE_DIR}/VERSION.txt" OPENSCAD_VERSION_FILE)
    string(STRIP "${OPENSCAD_VERSION_FILE}" OPENSCAD_VERSION)
    if (NOT "${OPENSCAD_VERSION}" STREQUAL "")
      message(STATUS "Found VERSION.txt file, using VERSION=${OPENSCAD_VERSION}")
    endif()
  endif()
endif()

# Default to today's date
if ("${OPENSCAD_VERSION}" STREQUAL "")
  string(TIMESTAMP OPENSCAD_VERSION "%Y.%m.%d")
  message(STATUS "No VERSION.txt file found, defaulting VERSION=${OPENSCAD_VERSION}")
endif()

# Get OPENSCAD_COMMIT
if ("${OPENSCAD_COMMIT}" STREQUAL "")
  if (EXISTS "${CMAKE_SOURCE_DIR}/COMMIT.txt")
    file(READ "${CMAKE_SOURCE_DIR}/COMMIT.txt" OPENSCAD_COMMIT_FILE)
    string(STRIP "${OPENSCAD_COMMIT_FILE}" OPENSCAD_COMMIT)
    if (NOT "${OPENSCAD_COMMIT}" STREQUAL "")
      message(STATUS "Found COMMIT.txt file, using COMMIT=${OPENSCAD_COMMIT}")
    endif()
  else()
    find_package(Git QUIET)
    if (GIT_FOUND)
      execute_process(
        COMMAND "${GIT_EXECUTABLE}" -C "${CMAKE_SOURCE_DIR}" rev-parse --is-inside-work-tree
        RESULT_VARIABLE GIT_INSIDE_WORK_TREE
        OUTPUT_QUIET
        ERROR_QUIET
      )
      if ("${GIT_INSIDE_WORK_TREE}" EQUAL 0)
        execute_process(
          COMMAND "${GIT_EXECUTABLE}" -C "${CMAKE_SOURCE_DIR}" log -1 --pretty=format:%h
          OUTPUT_VARIABLE OPENSCAD_COMMIT
          OUTPUT_STRIP_TRAILING_WHITESPACE
          ERROR_QUIET
        )
        if (NOT "${OPENSCAD_COMMIT}" STREQUAL "")
           message(STATUS "No COMMIT.txt file found, using git commit: ${OPENSCAD_COMMIT}")
        endif()
      endif()
    endif()
  endif()
endif()

# Split OPENSCAD_VERSION into components
