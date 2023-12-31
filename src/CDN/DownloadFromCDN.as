void DownloadingFromCDN() {
    DownloadZIP();
}

string url = "http://maniacdn.net/ar_/More-TM-Cars/Vehicles.zip";

void DownloadZIP() {
    string storagePath = IO::FromStorageFolder("Vehicles.zip");

    if (!IO::FileExists(IO::FromStorageFolder("Vehicles.zip"))) {

        Net::HttpRequest req;
        req.Method = Net::HttpMethod::Get;
        req.Url = url;
        
        req.Start();

        while (!req.Finished()) yield();

        if (req.ResponseCode() == 200) {
            log("Fetching file successful (Vehicles): \n" + req.String(), LogLevel::Info, 17);
            WriteContent(req.String(), storagePath);
        } else {
            log("Error fetching file (Vehicles): \n" + req.String(), LogLevel::Error, 20);
        }
    } else {
        WriteContent(IO::FromStorageFolder("Vehicles.zip"), storagePath);
    }
}

void WriteContent(const string &in reqBody, string storagePath) {
    IO::File targetFile;
    targetFile.Open(storagePath, IO::FileMode::Write);
    targetFile.Write(reqBody);
    targetFile.Close();
    log("Finished writing to the file", LogLevel::Info, 29);

    ExtractZip();
}

void ExtractZip() {
    // auto file;
    // string gameDataPath = IO::FromAppFolder("gameData");
    
    auto fid = Fids::GetUser(IO::FromStorageFolder("Vehicles.zip"));

    auto nod = Fids::Preload(fid);




    // for (auto file : nod.Fid) {
    //     Fids::Extract(nod);

    //     string destinationFilePath = gameDataPath + "/" + fid.FileName;

    //     IO::Move(file.ExtractedPath, destinationFilePath);
    // }
}


