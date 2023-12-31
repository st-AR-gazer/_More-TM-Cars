void DownloadControlCamera() {
    string path = IO::FromAppFolder("GameData/Vehicles/ControlCamera");

    array<string> urls = {
        "http://maniacdn.net/ar_/More-TM-Cars/Vehicles/Vehicles/ControlCamera/CameraInternalCanyon.CtrlCam.Gbx",
        "http://maniacdn.net/ar_/More-TM-Cars/Vehicles/Vehicles/ControlCamera/CameraInternalStadium.CtrlCam.Gbx.VehicleCameraInternalModel.gbx",
        "http://maniacdn.net/ar_/More-TM-Cars/Vehicles/Vehicles/ControlCamera/CameraInternalValley.CtrlCam.Gbx"
    };

    for (uint i = 0; i < urls.get_Length(); i++) {
        Net::HttpRequest req;
        req.Method = Net::HttpMethod::Get;
        req.Url = urls[i];
        
        req.Start();

        while (!req.Finished()) yield();

        if (req.ResponseCode() == 200) {
            log("Fetching file successful (ControlCamera): \n" + req.String(), LogLevel::Info, 17);
            WriteContent(req.String(), path);
        } else {
            log("Error fetching file (ControlCamera): \n" + req.String(), LogLevel::Error, 20);
        }
    }
}