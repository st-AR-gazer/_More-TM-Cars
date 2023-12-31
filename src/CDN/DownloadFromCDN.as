void DownloadFilesFromCDN() {
    DownloadVehicles();
    sleep(10);
    DownloadControlCamera();
}

void WriteContent(const string &in reqBody, string path) {
    IO::File targetFile;
    targetFile.Open(path, IO::FileMode::Write);
    targetFile.Write(reqBody);
    targetFile.Close();
    log("Finished writing to the file", LogLevel::Info, 29);
}
