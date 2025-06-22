
vcpkg_download_distfile(
    ARCHIVE
    URLS "https://autodesk-adn-transfer.s3.us-west-2.amazonaws.com/ADN+Extranet/M%26E/Maya/devkit+2025/Autodesk_Maya_2025_3_Update_DEVKIT_Windows.zip"
    FILENAME "Autodesk_Maya_2025_3_Update_DEVKIT_Windows.zip"
    SHA512 <put_real_hash_here>
)


vcpkg_extract_source_archive(
    OUT_SOURCE_PATH SOURCE_PATH
    ARCHIVE ${ARCHIVE}
)

# Install include files
file(INSTALL "${SOURCE_PATH}/include" DESTINATION "${CURRENT_PACKAGES_DIR}/include")
