bool doCreateFolderStructure = false;

void CreateFolderStructure() {

    if (!IO::FolderExists(IO::FromUserGameFolder("_more-TM-Cars-gameData_Temporary"))) {
        IO::CreateFolder(IO::FromUserGameFolder("_more-TM-Cars-gameData_Temporary"));
    }

    if (!doCreateFolderStructure) return;

    if (!IO::FolderExists(IO::FromAppFolder("gameData"))) {
        IO::CreateFolder(IO::FromAppFolder("gameData"));
    }
    //
    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles"))) {
        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles"));
    }
    //
    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/ControlCamera"))) {
        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/ControlCamera"));
    }
    //
    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Items"))) {
        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Items"));
    }
    //
    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media"))) {
        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media"));
    }
    //
        if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Audio"))) {
            IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Audio"));
        }
            if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Audio/AudioEnvironment"))) {
                IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Audio/AudioEnvironment"));
            }
            if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound"))) {
                IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound"));
            }
                if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData"))) {
                    IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData"));
                }
                    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData/CanyonEngine"))) {
                        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData/CanyonEngine"));
                    }
                    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData/LagoonEngine"))) {
                        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData/LagoonEngine"));
                    }
                    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData/StadiumCar"))) {
                        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData/StadiumCar"));
                    }
                    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData/StadiumEngine_2013_02_25"))) {
                        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData/StadiumEngine_2013_02_25"));
                    }
                    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData/ValleyEngine_2013_03_06"))) {
                        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData/ValleyEngine_2013_03_06"));
                    }
                    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData/ValleyMisc"))) {
                        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Audio/Sound/WavData/ValleyMisc"));
                    }
        if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Light"))) {
            IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Light"));
        }
        if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Material"))) {
            IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Material"));
        }
        if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Mesh"))) {
            IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Mesh"));
        }
        if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Shader"))) {
            IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Shader"));
        }
        if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Solid"))) {
            IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Solid"));
        }
        if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Text"))) {
            IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Text"));
        }
            if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Text/PHLSL"))) {
                IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Text/PHLSL"));
            }
            if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Text/VHLSL"))) {
                IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Text/VHLSL"));
            }
        if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Texture"))) {
            IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Texture"));
        }
            if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Media/Texture/Image"))) {
                IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Media/Texture/Image"));
            }
    //
    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/MotionParticleEmitterModel"))) {
        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/MotionParticleEmitterModel"));
    }
    //
    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/ParticleMaterialImpactModel"))) {
        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/ParticleMaterialImpactModel"));
    }
    //
    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/PhyModel"))) {
        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/PhyModel"));
    }
    //
    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/RefBuffer"))) {
        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/RefBuffer"));
    }
    //
    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/Skins"))) {
        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/Skins"));
    }
    //
    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/VehicleTunings"))) {
        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/VehicleTunings"));
    }
    //
    if (!IO::FolderExists(IO::FromAppFolder("gameData/Vehicles/VisModel"))) {
        IO::CreateFolder(IO::FromAppFolder("gameData/Vehicles/VisModel"));
    }
}