string checkFilePath = IO::FromStorageFolder("initCheck.txt");

void Main() {
    ExtractionTests();
    sleep(100);

    if (IO::FileExists(checkFilePath) and IO::FileExists(IO::FromAppFolder("gameData/changelog.txt"))) return;
    CreateCheckFile();

    CreateFolderStructure();
    sleep(100);
    DownloadingFromCDN();

}

void CreateCheckFile() {
    IO::File checkFile;
    checkFile.Open(checkFilePath, IO::FileMode::Write);
    checkFile.Close();
}