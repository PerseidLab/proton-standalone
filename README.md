
A portable, standalone version of GE-Proton packaged as an AppImage. This version includes built-in system integration for running Windows applications directly from your file manager.

**Key Features**  
- Portable Runner: Run explorer.exe or any Windows binary by default.
- System Integration: Register GE-Proton as a handler for .exe and .msi files.
- Simple Management: Easy install/uninstall flags for desktop integration.

**Usage**  
Standard Launch  
By default, running the AppImage will launch the Wine file explorer within the GE-Proton environment:
``./ge-proton-*-standalone.AppImage``  

**Running Specific Files**  
You can pass any Windows executable as an argument:  
``./ge-proton-*-standalone.AppImage path/to/game.exe``  

- System Integration  
This AppImage can integrate itself into your Linux desktop environment, allowing you to right-click any .exe and select "Open with Proton AppImage Launcher."  

- Install Integration  
To add GE-Proton standalone AppImage to your system's MIME types and application menu:
``./ge-proton-*-standalone.AppImage --install``  
This creates a desktop entry and associates .exe and .msi files with this AppImage.  

- Uninstall Integration  
To clean up all shortcuts and file associations:
``./ge-proton-*-standalone.AppImage --uninstall``  

**Technical Details**    
- Upstream: Based on [Proton-GE](https://github.com/GloriousEggroll/proton-ge-custom) by GloriousEggroll.
- MIME Handling: Updates xdg-mime and update-desktop-database during the --install process.  
- Prefix Management: Defaults to standard Wine prefix locations unless WINEPREFIX is specified.  

**Disclaimer**  
This AppImage can't be run with Steam Linux Runtime and umu-launcher.  
This project is for educational purposes only, so there might not be any updates.  
This is a community packaging project. All credit for the development of Proton-GE goes to Thomas "GloriousEggroll" Crider and the Valve/Wine contributors. Please do not report issues related to this AppImage wrapper to the official GE-Proton repository.
