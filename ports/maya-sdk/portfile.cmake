
message(STATUS "Processing port: maya-sdk")
vcpkg_download_distfile(ARCHIVE
    URLS "https://github.com/sstarosz/vcpkg-registry/releases/download/v0.1.0-alpha/Autodesk_Maya_2025_3_Update_DEVKIT_Windows.zip"
    FILENAME "Autodesk_Maya_2025_3_Update_DEVKIT_Windows.zip"
    SHA512 0C50BA1890F3ED68884289C4E04438A3FD10A4838D8046783C6CDF0A7A7AE8322572753EF61F1DB05C8EB6ABCF6225CDD45987467DAF38A0FA919E87DC383985
)


message(STATUS "Extracting source archive: ${ARCHIVE}")
vcpkg_extract_source_archive_ex(
    OUT_SOURCE_PATH SOURCE_PATH
    ARCHIVE "${ARCHIVE}"
    # (Optional) A friendly name to use instead of the filename of the archive (e.g.: a version number or tag).
    # REF 1.0.0
    # (Optional) Read the docs for how to generate patches at:
    # https://github.com/microsoft/vcpkg-docs/blob/main/vcpkg/examples/patching.md
    # PATCHES
    #   001_port_fixes.patch
    #   002_more_port_fixes.patch
)


message(STATUS "Source archive extracted to: ${SOURCE_PATH}")
file(COPY "${SOURCE_PATH}/devkit/include" DESTINATION "${CURRENT_PACKAGES_DIR}")