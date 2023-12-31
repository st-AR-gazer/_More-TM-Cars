void DownloadVehicles() {
    /*
    string path = IO::FromAppFolder("GameData\\Vehicles");
    print(path);

    array<string> urls = {
        "http://maniacdn.net/ar_/More-TM-Cars/Vehicles/"
        // "http://maniacdn.net/ar_/More-TM-Cars/Vehicles/VehicleOnFire.ParticleModel.Gbx",
        // "http://maniacdn.net/ar_/More-TM-Cars/Vehicles/VehicleSmokeTrail.ParticleModel.Gbx"        
    };

    for (uint i = 0; i < urls.get_Length(); i++) {
        Net::HttpRequest req;
        req.Method = Net::HttpMethod::Get;
        req.Url = urls[i];
        
        req.Start();

        while (!req.Finished()) yield();

        if (req.ResponseCode() == 200) {
            log("Fetching file successful (Vehicles): \n" + req.String(), LogLevel::Info, 17);
            WriteContent(req.String(), path);
        } else {
            log("Error fetching file (Vehicles): \n" + req.String(), LogLevel::Error, 20);
        }
    }
    */
}