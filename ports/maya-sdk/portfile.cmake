vcpkg_download_distfile(ARCHIVE
    URLS "https://github.com/sstarosz/vcpkg-registry/releases/download/v0.1.0-alpha/Autodesk_Maya_2025_3_Update_DEVKIT_Windows.zip"
    FILENAME "Autodesk_Maya_2025_3_Update_DEVKIT_Windows.zip"
    SHA512 e8cc4c739fe576d646e02f55ab87d5819eb238567f574014f1e333c92aa0e47d
)


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

file(COPY "${SOURCE_PATH}/devkit/include" DESTINATION "${CURRENT_PACKAGES_DIR}")