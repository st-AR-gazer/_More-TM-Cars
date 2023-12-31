string checkFilePath = IO::FromStorageFolder("initCheck.txt");

string url = "http://maniacdn.net/ar_/";
string gameData = IO::FromAppFolder("gameData");
string vehiclesDir = gameData + "\\vehicles";


void Main() {
    sleep(100);

    if (IO::FileExists(checkFilePath) and IO::FileExists(IO::FromAppFolder("gameData/changelog.txt"))) return;
    CreateCheckFile();

    CreateFolderStructure();
    sleep(100);
    DownloadFilesFromCDN();
}


void CreateCheckFile() {
    IO::File checkFile;
    checkFile.Open(checkFilePath, IO::FileMode::Write);
    checkFile.Close();
}