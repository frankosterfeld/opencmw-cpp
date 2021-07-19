include(FetchContent)

FetchContent_Declare (
        Catch2
        GIT_REPOSITORY https://github.com/catchorg/Catch2.git
        GIT_TAG        v2.13.6
)

FetchContent_Declare (
        gsl-lite
        GIT_REPOSITORY https://github.com/gsl-lite/gsl-lite.git
        GIT_TAG        v0.38.1
        # SOURCE_SUBDIR  include/gsl-lite
)

FetchContent_Declare (
        fmt
        GIT_REPOSITORY https://github.com/fmtlib/fmt.git
        GIT_TAG        6.2.1
)

FetchContent_Declare(
        refl-cpp
        GIT_REPOSITORY https://github.com/veselink1/refl-cpp.git
        GIT_TAG        ee92dcd5eb078fdb1c90587db4b163b58382fd27
)

# FetchContent_Declare (
#         mp-units
#         GIT_REPOSITORY https://github.com/mpusz/units.git
#         GIT_TAG        v0.7.0
#         SOURCE_SUBDIR  src
#         # make mpunits not look for system installed gsl-lite and fmt
#         PATCH_COMMAND patch -p1 -N < ${CMAKE_CURRENT_LIST_DIR}/mpunits.patch || true
# )

FetchContent_MakeAvailable(Catch2 gsl-lite fmt refl-cpp )#mp-units)
