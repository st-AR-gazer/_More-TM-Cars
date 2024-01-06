string testFile = IO::FromStorageFolder("Vehicles.zip");
string testLocationFile = IO::FromStorageFolder("Vehicles.zip");
string testLocationFolder = IO::FromStorageFolder("");

void ExtractionTests() {
    AllLocationsLog();

    Test_WriteContent(testFile, IO::FromStorageFolder("Vehicles.zip"), false);
}

void AllLocationsLog() {
    // log("IO  AppFolder: "          +   IO::FromAppFolder(""), LogLevel::Test, 2);
    // log("IO  DataFolder: "         +   IO::FromDataFolder(""), LogLevel::Test, 3);
    // log("IO  StorageFolder: "      +   IO::FromStorageFolder(""), LogLevel::Test, 4);
    // log("IO  UserGameFolder: "     +   IO::FromUserGameFolder(""), LogLevel::Test, 5);
    log("FID ResourceFolder: "     + Fids::GetResourceFolder("").FullDirName, LogLevel::Test, 6);
    log("FID StorageFolder: "      + Fids::GetFakeFolder("").FullDirName, LogLevel::Test, 7);
    log("FID UserGameFolder: "     + Fids::GetUserFolder("").FullDirName, LogLevel::Test, 8);
    log("FID ProgramDataFolder: "  + Fids::GetProgramDataFolder("").FullDirName, LogLevel::Test, 9);
}



void Test_WriteContent(const string &in reqBody, string storagePath, bool skip) {
    if (!skip) {
        IO::File targetFile;
        targetFile.Open(storagePath, IO::FileMode::Write);
        targetFile.Write(reqBody);
        targetFile.Close();
        log("Finished writing to the file", LogLevel::Info, 38);
    }

    Test_PreloadZip();
}

void Test_PreloadZip() {
    auto fid = Fids::GetUser("_more-TM-Cars-gameData_Temporary\\Vehicles.zip");

    CPlugFileZip@ zipFile = cast<CPlugFileZip>(Fids::Preload(fid));

    if (zipFile !is null) {
        log("Casting successful", LogLevel::Info, 53);
        // if (!IO::FolderExists(zipFile.Location.FullDirName + "\\Vehicles")) {
        //     IO::CreateFolder(zipFile.Location.FullDirName + "\\Vehicles");
        // }
        zipFile.UiInstallFidsInSubFolder();
        
        log("UiInstallFidsInSubFolder finished in: " + zipFile.Location.FullDirName, LogLevel::Info, 54);
        // ExtractZipInfo();
    } else {
        log("Failed to cast nod to CPlugFileZip", LogLevel::Error, 55);
    }
}