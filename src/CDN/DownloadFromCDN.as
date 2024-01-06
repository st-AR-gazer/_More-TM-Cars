void DownloadingFromCDN() {
    return;
    DownloadZIP();
}

string url = "http://maniacdn.net/ar_/More-TM-Cars/Vehicles.zip";
string gameData = IO::FromAppFolder("gameData");
string vehiclesZip = gameData + "\\Vehicles.zip";

string docsTrackmania = IO::FromUserGameFolder("_more-TM-Cars-gameData_Temporary\\Vehicles.zip");


// string testLocation = IO::FromAppFolder("gameData\\Vehicles.zip");
string testLocation = IO::FromDataFolder("");



void DownloadZIP() {
    testLocation = IO::FromDataFolder("_more-TM-Cars-gameData_Temporary\\Vehicles.zip");

    string storagePath = testLocation;

    if (!IO::FileExists(storagePath)) {
        log("File does not exist, downloading from CDN", LogLevel::Warn, 11);

        Net::HttpRequest req;
        req.Method = Net::HttpMethod::Get;
        req.Url = url;
        
        req.Start();

        while (!req.Finished()) yield();

        if (req.ResponseCode() == 200) {
            log("Fetching file successful (Vehicles): \n" + req.String(), LogLevel::Info, 22);
            WriteContent(req.String(), storagePath, false);
        } else {
            log("Error fetching file (Vehicles): \n" + req.String(), LogLevel::Error, 25);
        }
    } else {
        WriteContent(storagePath, storagePath, true);
    }
}

void WriteContent(const string &in reqBody, string storagePath, bool skip) {
    if (!skip) {
        IO::File targetFile;
        targetFile.Open(storagePath, IO::FileMode::Write);
        targetFile.Write(reqBody);
        targetFile.Close();
        log("Finished writing to the file", LogLevel::Info, 38);
    }

    PreloadZip();
}

void PreloadZip() {

    print(Fids::GetResource(IO::FromStorageFolder("Vehicles.zip")).FullFileName);

    auto fid = Fids::GetUser("_more-TM-Cars-gameData_Temporary\\Vehicles.zip");



    print(fid.FullFileName);

    CPlugFileZip@ zipFile = cast<CPlugFileZip>(Fids::Preload(fid));

    if (zipFile !is null) {
        log("Casting successful", LogLevel::Info, 53);
        zipFile.UiInstallFidsInSubFolder();
        ExtractZipInfo();
    } else {
        log("Failed to cast nod to CPlugFileZip", LogLevel::Error, 55);
    }
}

string vehiclesDir = gameData + "\\Vehicles";

void ExtractZipInfo() {
    // log("Extracting zip info", LogLevel::Info, 62);
    // CPlugFileZip@ zipFile = cast<CPlugFileZip>(Fids::GetGame("gameData\\Vehicles.zip"));

    // if (zipFile !is null) {
    //     log("Casting successful", LogLevel::Info, 67);
    //     zipFile.ExtractAllFileContent(vehiclesDir);
    //     MoveFilesToCorrectFolder();
    // } else {
    //     log("Failed to cast nod to CPlugFileZip", LogLevel::Error, 69);
    // }
}

void MoveFilesToCorrectFolder() {
    // log("Moving files to correct folder", LogLevel::Info, 62);
    // IO::Move(IO::FromAppFolder("gameData\\Vehicles\\*"), IO::FromAppFolder("gameData"));
    // IO::RemoveDirectory(IO::FromAppFolder("gameData\\Vehicles"));
    // log("Finished moving files", LogLevel::Info, 65);
}