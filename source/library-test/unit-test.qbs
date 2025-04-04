import qbs

CppApplication {
    Depends
    {
        name: 'gis-coord-conversion-lib'
    }

    name: "gis-coord-conversion-test"
    consoleApplication: true
    cpp.debugInformation: true

    files: [
        "src/kmx/test.cpp",
    ]
    cpp.cxxLanguageVersion: "c++20"
    cpp.enableRtti: false
    cpp.includePaths: [
        "inc",
        "inc_dep"
    ]
    cpp.systemIncludePaths: [
        "/usr/local/include",
        "/usr/include"
    ]
    cpp.staticLibraries: [
        "/usr/local/lib/libCatch2Main.a",
        "/usr/local/lib/libCatch2.a"
    ]
}
