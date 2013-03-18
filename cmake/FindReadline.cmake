include( FindPackageHandleStandardArgs )

if( READLINE_INCLUDE_DIR AND READLINE_LIBRARY )
  set( READLINE_FOUND TRUE )
else( READLINE_INCLUDE_DIR AND READLINE_LIBRARY )
  find_path( READLINE_INCLUDE_DIR readline/readline.h /usr/include/readline )

  find_library(
    READLINE_LIBRARY
    NAMES readline
    HINTS
    ${READLINE_ROOT_DIR}
    PATH_SUFFIXES
    ${LIBRARY_PATH_PREFIX}
    ${LIB_SEARCH_OPTIONS})

  find_package_handle_standard_args(
    READLINE
    DEFAULT_MSG
    READLINE_LIBRARY READLINE_INCLUDE_DIR )

  mark_as_advanced( READLINE_INCLUDE_DIR READLINE_LIBRARY )
endif( READLINE_INCLUDE_DIR AND READLINE_LIBRARY )
