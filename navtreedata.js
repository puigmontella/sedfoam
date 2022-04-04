/*
 @licstart  The following is the entire license notice for the JavaScript code in this file.

 The MIT License (MIT)

 Copyright (C) 1997-2020 by Dimitri van Heesch

 Permission is hereby granted, free of charge, to any person obtaining a copy of this software
 and associated documentation files (the "Software"), to deal in the Software without restriction,
 including without limitation the rights to use, copy, modify, merge, publish, distribute,
 sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all copies or
 substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
 BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
 DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

 @licend  The above is the entire license notice for the JavaScript code in this file
*/
var NAVTREE =
[
  [ "SedFOAM", "index.html", [
    [ "Installation", "install.html", [
      [ "Compiling from source with supported OpenFOAM (last ESI version)", "install.html#install_src_unix", null ],
      [ "Don't install sedFoam and use the latest sedFoam docker", "install.html#use_docker", null ]
    ] ],
    [ "Governing equations", "governing.html", [
      [ "Turbulence-averaged two-phase flow governing equations", "governing.html#turbAvg", [
        [ "Fluid phase shear stress", "governing.html#fluidstress", null ],
        [ "Particle phase stress", "governing.html#particleStress", [
          [ "Dense granular rheology", "governing.html#granularRheo", null ],
          [ "Kinetic theory", "governing.html#subkinetic", null ]
        ] ]
      ] ]
    ] ],
    [ "Algorithm", "algoSedFoam.html", [
      [ "Velocity-pressure algorithm", "algoSedFoam.html#algo", [
        [ "Step 1: Velocity predictor at the cell centres", "algoSedFoam.html#step1", null ],
        [ "Step 2: Velocity fluxes at the cell faces", "algoSedFoam.html#step2", null ],
        [ "Step 3: Velocity corrector at the cell faces", "algoSedFoam.html#step3", null ]
      ] ],
      [ "Summary of the solution procedure", "algoSedFoam.html#summaryAlgo", null ]
    ] ],
    [ "Laminar flow tutorials", "tutorials_laminar.html", [
      [ "1DSedim: Pure sedimentation", "tutorials_laminar.html#Sedim_testcase", [
        [ "Pre-processing", "tutorials_laminar.html#preproc", null ],
        [ "Running sedFoam_rbgh", "tutorials_laminar.html#run_sedFoam", null ],
        [ "Post-processing", "tutorials_laminar.html#post", null ]
      ] ],
      [ "1DBedload: Laminar bedLoad", "tutorials_laminar.html#BedLoadCLB", [
        [ "Pre-processing", "tutorials_laminar.html#preprocBL", null ],
        [ "Post-processing using python", "tutorials_laminar.html#postBL", null ],
        [ "Extension to the Mu(Iv) rheology", "tutorials_laminar.html#ExtensionBL", null ]
      ] ],
      [ "1DAvalancheMuI: Dry granular avalanche", "tutorials_laminar.html#dryavalanche", [
        [ "Pre-processing", "tutorials_laminar.html#preprocAva", null ],
        [ "Post-processing using python", "tutorials_laminar.html#postAvalanche", null ]
      ] ],
      [ "1DWetAvalancheMuIv: Immersed granular avalanche", "tutorials_laminar.html#wetvalanche", [
        [ "Pre-processing", "tutorials_laminar.html#preprocWetAva", null ],
        [ "Sedimentation process", "tutorials_laminar.html#SedimentationWetAva", null ],
        [ "Launching the 1D immersed avalanche", "tutorials_laminar.html#WetAvaProc", null ],
        [ "Post-processing using python", "tutorials_laminar.html#postWetAvalanche", null ]
      ] ],
      [ "2DWetAvalancheMuIv: Immersed granular avalanche", "tutorials_laminar.html#wetvalanche2D", [
        [ "Pre-processing", "tutorials_laminar.html#preprocSA", null ],
        [ "1D Deposition process", "tutorials_laminar.html#sediment1DwetAva", null ],
        [ "Mesh generation", "tutorials_laminar.html#meshgen2DAvalanche", null ],
        [ "Boundary and initial conditions", "tutorials_laminar.html#BC_initi2DAvalanche", null ],
        [ "Physical properties", "tutorials_laminar.html#PhysProp2DAvalanche", null ],
        [ "Computation launching", "tutorials_laminar.html#lauch_2DwetAvalanche", null ],
        [ "Post-processing using python", "tutorials_laminar.html#postAvalanche2D", null ],
        [ "1DSimpleShear: Simple shear with kinetic theory", "tutorials_laminar.html#SimpleShear", [
          [ "Post-processing using python", "tutorials_laminar.html#postSimpleShear", null ]
        ] ]
      ] ]
    ] ],
    [ "Reynolds-averaged flow tutorials", "tutorials_RAS.html", [
      [ "1DBoundaryLayer: Single-phase turbulent boundary layer flow", "tutorials_RAS.html#BoundaryLayer", [
        [ "Boundary conditions", "tutorials_RAS.html#oneBLBC", null ],
        [ "Post-processing using python", "tutorials_RAS.html#post1DBoundayLayer", null ]
      ] ],
      [ "1DBedloadTurb: Turbulent bedload transport", "tutorials_RAS.html#BedLoadTurb", [
        [ "Pre-processing", "tutorials_RAS.html#preprocBLTurb", null ],
        [ "Post-processing using python", "tutorials_RAS.html#postBLTurb", null ]
      ] ],
      [ "1DSheetFlow: Turbulent sheet-flows", "tutorials_RAS.html#SheetFlow", [
        [ "Pre-processing", "tutorials_RAS.html#preprocSF", null ],
        [ "Post-processing using python", "tutorials_RAS.html#postSF", null ]
      ] ],
      [ "2DPipelineScour: Scour around an horizontal cylinder", "tutorials_RAS.html#Scour2DCylinder", [
        [ "Pre-processing", "tutorials_RAS.html#preprocSP", null ],
        [ "Mesh generation", "tutorials_RAS.html#meshgen_SP", null ],
        [ "Boundary and initial conditions", "tutorials_RAS.html#BC_init_SP", null ],
        [ "Physical properties", "tutorials_RAS.html#PhysProp_SP", null ],
        [ "Control", "tutorials_RAS.html#control_SP", null ],
        [ "Computation launching", "tutorials_RAS.html#lauch_SP", null ],
        [ "Post-processing using python", "tutorials_RAS.html#post_SP", null ]
      ] ],
      [ "3DScourCylinder: Scour around a vertical cylinder", "tutorials_RAS.html#Scour3DCylinder", [
        [ "Pre-processing", "tutorials_RAS.html#preprocS3D", null ],
        [ "Mesh generation", "tutorials_RAS.html#meshgen_S3D", null ],
        [ "Boundary and initial conditions", "tutorials_RAS.html#BC_init_S3D", null ],
        [ "Physical properties", "tutorials_RAS.html#PhysProp_S3D", null ],
        [ "Rheological parameters", "tutorials_RAS.html#rheology_S3D", null ],
        [ "Control", "tutorials_RAS.html#control_S3D", null ],
        [ "Computation launching", "tutorials_RAS.html#lauch_S3D", null ],
        [ "Post-processing using paraview", "tutorials_RAS.html#post_S3D", null ]
      ] ]
    ] ],
    [ "LES tutorials", "tutorials_LES.html", [
      [ "3DChannel560: Turbulent channel flow laden with particles", "tutorials_LES.html#channel_sec", [
        [ "Pre-processing", "tutorials_LES.html#preprocChan", null ],
        [ "Mesh and boundary conditions", "tutorials_LES.html#meshgen_Chan", null ],
        [ "Initial conditions", "tutorials_LES.html#init_Chan", null ],
        [ "Physical properties", "tutorials_LES.html#PhysProp_Chan", null ],
        [ "Control", "tutorials_LES.html#control_Chan", null ],
        [ "Computation launching", "tutorials_LES.html#lauch_Chan", null ],
        [ "Post-processing using python", "tutorials_LES.html#post_Chan", null ]
      ] ],
      [ "3DOscillSheetFlow: Oscillatory sheet flow", "tutorials_LES.html#OscillSheetFlow_sec", [
        [ "Pre-processing", "tutorials_LES.html#preprocOdo", null ],
        [ "Mesh and boundary conditions", "tutorials_LES.html#meshgen_Odo", null ],
        [ "Initial conditions", "tutorials_LES.html#init_Odo", null ],
        [ "Physical properties", "tutorials_LES.html#PhysProp_Odo", null ],
        [ "Control", "tutorials_LES.html#control_Odo", null ],
        [ "Computation launching", "tutorials_LES.html#lauch_Odo", null ]
      ] ]
    ] ],
    [ "Publications", "publicationList.html", [
      [ "2022", "publicationList.html#pubs2022", null ],
      [ "2021", "publicationList.html#pubs2021", null ],
      [ "2020", "publicationList.html#pubs2020", null ],
      [ "2019", "publicationList.html#pubs2019", null ],
      [ "2018", "publicationList.html#pubs2018", null ],
      [ "2017", "publicationList.html#pubs2017", null ]
    ] ],
    [ "Input Parameters", "inputs.html", [
      [ "Physical processes", "inputs.html#inputParams", [
        [ "File transportProperties", "inputs.html#transportProperties", null ],
        [ "File interfacialProperties", "inputs.html#interfacialProperties", null ],
        [ "File ppProperties", "inputs.html#ppProperties", null ],
        [ "File granularRheologyProperties", "inputs.html#granularRheologyProperties", null ],
        [ "File forceProperties", "inputs.html#forceProperties", null ],
        [ "File turbulenceProperties.phaseb", "inputs.html#turbulencePropertiesphaseb", null ],
        [ "File turbulenceProperties.phasea", "inputs.html#turbulencePropertiesphasea", null ],
        [ "File twophaseRASProperties", "inputs.html#twophaseRASProperties", null ]
      ] ]
    ] ],
    [ "How To work with github", "howtogit.html", [
      [ "Simple user level: How to download and update sedFoam sources", "howtogit.html#howtoclone", null ],
      [ "Advanced user level: How to contribute to sedFoam development", "howtogit.html#improvingsedfoam", [
        [ "Creating your own fork", "howtogit.html#createfork", null ],
        [ "Create branches", "howtogit.html#createbranch", null ],
        [ "Make and commit changes", "howtogit.html#commitchanges", null ],
        [ "Open a Pull Request", "howtogit.html#pullrequest", null ]
      ] ]
    ] ],
    [ "How To work with sedFoam container", "howtodocker.html", [
      [ "Configuration of the sedFoam docker", "howtodocker.html#configuration", null ],
      [ "How to use/launch sedFoam docker ?", "howtodocker.html#howtouse", [
        [ "launch/initiate docker:", "howtodocker.html#launch", [
          [ "In jupyter notebook using your web browser (macOS, linux, windows):", "howtodocker.html#notebook", null ],
          [ "On macOS with GUI (graphical interface without paraview):", "howtodocker.html#macOS", null ],
          [ "On Windows with GUI (graphical interface without paraview):", "howtodocker.html#windows", null ],
          [ "On linux with GUI (graphical interface without paraview):", "howtodocker.html#linux", null ]
        ] ],
        [ "Start a container (if existing and not running) :", "howtodocker.html#start", null ],
        [ "Attach to a running container (if existing and running):", "howtodocker.html#attach", null ]
      ] ]
    ] ],
    [ "Frequently Asked Questions", "faq.html", [
      [ "Which non-standard applications does sedFoam consist?", "faq.html#sedfoam_app", null ],
      [ "Are sedFoam applications parallel?", "faq.html#parallel", null ],
      [ "Is there any example that sedFoam was applied onto industry-related engineering problems?", "faq.html#industry", null ],
      [ "What are the limitations of sedFoam; what remains unresolved?", "faq.html#limitations", null ],
      [ "Roughly, how long do you or your colleagues plan to maintain sedFoam?", "faq.html#maintain_duration", null ],
      [ "How to choose the CFL number?", "faq.html#CFL", null ],
      [ "How to choose the alphaMax value?", "faq.html#alphaMax", null ],
      [ "What is the meaning of relaxPa?", "faq.html#relaxPa", null ],
      [ "Which value shall I use for SUS?", "faq.html#SUS", null ]
    ] ],
    [ "Contributors", "credits-contributors.html", [
      [ "Authors", "credits-contributors.html#Authors", null ],
      [ "Organisations", "credits-contributors.html#Organisations", null ]
    ] ],
    [ "Download", "^http://github.com/sedfoam/sedfoam", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#aae1a711918fab34f61ea4c40b1efc094", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#adb1a684da0d33e769f5cc88970032f06", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#a7fc2e46d28a3ad3546d1e6035be7eaff", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#aa0d96bd82535e1c9c1929481a59955e0", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#ac486564ef58bf8d04ffa18b652077b50", null ],
    [ "defineRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#a7f1451ca5e9baec5234903bc7b60ffa6", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#addc349510b959ead3c8396c0ae283e18", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#a8461714c0676c9f04f14a75d2e3659e2", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#aaae43d06cb91d9ebf856bf89436d0e03", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#ab6b903984f68ee485087fff2c0b48f69", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#acac239900549c06bd239d2998075a614", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#a95f4d19476bd86466c851f28e126f9f4", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#a411280aac4b28be9f7403dc1bcaaaccc", null ],
    [ "defineRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#ac5d3275dbaa49e47e14a36f6536bca76", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#a561e10df1e0f44733630a4d736377885", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#a79c12bc98abbd89d15fcf8c333617e59", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#ada3dd7f540492fafbbf311f039f3a50a", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#a7c1d4c6ac864091bde7f5ed81b93017a", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#a0cb241338d15ccee48d21f41c41db9c4", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#aebf8f6729b686400015d13e791ccb50d", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#a69d0ce4b79e8aefdf95e8afb9923d4aa", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#a656a52a9f513d2ba0af8296627475be7", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#ac82f2de6a501668c5211860413cd492f", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#ab2f20793c812ffab989f173f1293a89b", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#ac494a4bcfef3e49ccc0d778a0db61d66", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#a72ca5247f780d4067cf03adaf9aa9d9b", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#af498c0cb85e621821d6665d56abffe1a", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#aac204a525bcb9a3ead1f1448ee1b0dea", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#a110c182381d42e82d6d5a5f1a429354f", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#ad1f440c61e72ccaa9524c7f86d34d351", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1granularRheologyModels.html#a5dbffde1a5ac6757bd9131ef30f6a6e5", null ],
    [ "defineRunTimeSelectionTable", "namespaceFoam_1_1granularRheologyModels.html#a970eff37621dbb2200d73d285d7a165f", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1kineticTheoryModels.html#a79f6aab2487d4fb6860fc525661d177c", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1kineticTheoryModels.html#a0281baf6b2488ac27f2c4ea50e0e31e1", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1kineticTheoryModels.html#a307827c925afa8a36497c4d33cdf98db", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1kineticTheoryModels.html#a7840b97c251e976dd5499d3e911eb756", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1kineticTheoryModels.html#a945f29a157f652c0c378f10d4a3491b3", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1kineticTheoryModels.html#adfd1cc59f972e7d622424fa011d3f80c", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1kineticTheoryModels.html#a7b24a293f4a772bba19ec2c27246b63d", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1kineticTheoryModels.html#a37563be9c56d8fcc7ce838cda4860e39", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1kineticTheoryModels.html#adae50017353188fb24c8f08221897d33", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1kineticTheoryModels.html#a0dea605c5ccb29fc5e0ff07ac3c67362", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1kineticTheoryModels.html#a2ea038e1e4aed9be2cd7c754ca89f3ba", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam_1_1kineticTheoryModels.html#a37b0fba702a1f193c54479159dbb4586", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam_1_1kineticTheoryModels.html#a7b10c0901c3d94dbc86c0ff7a78e776b", null ],
    [ "defineRunTimeSelectionTable", "namespaceFoam_1_1kineticTheoryModels.html#a581b9ae6d50c2be0dbadd902d34caf38", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a983257174a20c1def49692bb0d2ab786", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a5eb81937abe3e72bdfc1ad328c5a01ad", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#afe84d589b5cf46e85f6fde1ba1563a5b", null ],
    [ "defineRunTimeSelectionTable", "namespaceFoam.html#ae387bac03b6bf620376a757cabf38c37", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a1cc092142f02bb9e1bf90d74953f19d7", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a33e68ec4529c86ad58ee58b3aca76809", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a0c2927e1586ecb2c9950633e11ada8a6", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#af4af7014e570cd411d338c9e83970565", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a4b0bfdc88b26e082c9c39ccd0306020d", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a35ce918e4534240fc438ffd69e7beb27", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a55e9073f4ae554ecdc4191ad18348c3d", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#afde8a8cf5c671753fb117457ede86b7e", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#adae4a08a8eafdef274f39c1aa75a5156", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#aa723c2d076e189c8d024d76c70c35c17", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#ad332b355798bc0af44ca0da50d01eba7", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a3c45bb033e712cc324a80e34735a674f", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a7ff49a13e04a6c0c08a40f8a82ab467a", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a7ac7d318db75a586fdb045064562b7e8", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a765c54e50948f8e026e67314a099a6c6", null ],
    [ "defineRunTimeSelectionTable", "namespaceFoam.html#a6d30396782e6d338e1c23cb3f6362930", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a46c3a333a3caac43b1a6a955ed9c8871", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a586cec5235a2df37c94824eea3435899", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#adcada1fe8c9e2456a917bf3d12f9ee85", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a69cce228065f60c897c6084d6c3b4f01", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#ac08d58266e53234a89eb09c710366f45", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#ad90e9b4e2ba030a90fb06ad5c24c9082", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a281bae695958997754d798453b0a8769", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#ab43c3c853d76e87a3b2b1c6d1cc9a29b", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#af6cf126afe1178b2a9d8ff78fd703db8", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#ae4318c29977646e385a1bfd25f1b01c9", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#afa5ab6ea6cc3454d8619917f5c216fa1", null ],
    [ "defineRunTimeSelectionTable", "namespaceFoam.html#acaee06da51f94c6d535b372499f9de39", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a3447ed43c346377acf19912f4daa0b51", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a0833e5da7bdc71364ad7946f6a46465f", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a803bf9f10c0fb88abf75e0597f92dab8", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a5b73c9a6bad0bda3fbffad735e38802a", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a1d99c29b99090c0e167b3166c14abb9f", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#acb53c229958b2595a5672a53c1a565d6", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a8e1ecc680731de78afa060e501729e69", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a0dec4aecb4133365a7d89beca2aca6b7", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a26de208440541f472513bb4f618c1cac", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#ad20998a4c0560d02d05608767469dcaf", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a12401ffe3e8185cea0e23208dcfb9095", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#ad1c20218e884077b478fa32a36531f74", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a56afbb3ec700384e3a1e1bab9d119d11", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#aa52cf8482257d113217bc0af72608613", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#ae2e49b4bcbd231b418c5441d4686bfd0", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a3ea5f8161bb035a682f48832e1a8412a", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a73ff7c1090d5f888872f033a623c7482", null ],
    [ "defineRunTimeSelectionTable", "namespaceFoam.html#ac00ff2199039b5575b4607ce13d2020c", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a10d3d7810d0ec78df2b891c1573d988c", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a03019a286a22bbf2d59e7e53ca5980ac", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#ab5909841547a3268b5438017f0913437", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#ae2207f3210747f755976157b843a481f", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#ad7b121f03e43eac3a5f78aa73dfee13a", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#add5e0cbd74cf77b035cf4dd5f6f45c1b", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#af0c007421ac5b1169bf08465ac8541df", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a275a041ec67e8495d4bb8e9711daac9e", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a6d0797482db07c05248fae50b86295a1", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#a778dc406d372b5c0569d59bd8d26ae68", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a9a7472456cc8b3aa085a9e7b9405e026", null ],
    [ "addToRunTimeSelectionTable", "namespaceFoam.html#af03dbc57202a19346cb77278aeb45f00", null ],
    [ "defineTypeNameAndDebug", "namespaceFoam.html#a5da4841c268e9b4f46bd3a552c5d1eef", null ],
    [ "defineRunTimeSelectionTable", "namespaceFoam.html#a48684197e4d4e137a922c5e869205229", null ],
    [ "Files", "files.html", [
      [ "File List", "files.html", "files_dup" ],
      [ "File Members", "globals.html", [
        [ "All", "globals.html", "globals_dup" ],
        [ "Functions", "globals_func.html", null ],
        [ "Variables", "globals_vars.html", null ],
        [ "Macros", "globals_defs.html", null ]
      ] ]
    ] ]
  ] ]
];

var NAVTREEINDEX =
[
"BoyerEtAlViscosity_8C.html",
"SyamlalRogersOBrienPressure_8C.html#a803bf9f10c0fb88abf75e0597f92dab8",
"dir_a9edca36e5a0f9a4bc0aa1c74d468224.html",
"partDynamicLagrangian_8H.html"
];

var SYNCONMSG = 'click to disable panel synchronisation';
var SYNCOFFMSG = 'click to enable panel synchronisation';