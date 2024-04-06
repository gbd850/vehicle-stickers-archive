# vehicle-stickers-archive

## About

This is a quite old project for me. It was developed in times when I have been creating various projects as server resources for Grand Theft Auto San Andreas multiplier game engine called [Multi Theft Auto (MTA)](https://github.com/multitheftauto/mtasa-blue). At the time of starting this project, which was around April 2020, I didn't really use GIT up to November 2021 when I initialized a local git repo for this project and started commiting changes. Because of that any development processes up to November 2021 were not tracked.

This project was created from scratch using libraries developed for writing scripts and resources for MTA. For more information the documentation is available on [MTA Wiki](https://wiki.multitheftauto.com/wiki/Main_Page).

The project is a vehicle vinyl wrap creator and manager that enables users to create custom paintjobs for vehicles by bying able to add and transform small stickers on a car's body. The resource gives the user full control over the placement, scale (available in two dimensions), rotation, color and even mirroring options for their placed stickers. Every new sticker is placed as a new layer and they are stacked on top of one another. Furthermore, the creator gives the ability to save and load paintjobs created by user.

When it comes to GUI, the resource delivers fully functional user interface created using [MTA's GUI API](https://wiki.multitheftauto.com/wiki/GUI_widgets) which gives the ability to create simple and intuitive GUI widgets. To open the GUI panel a `Ctrl + E` keyboard shortcut was created. The UI can be broken down into two sections: stickers layers panel and the main navigation bar. On the stickers layers panel are displayed added stickers in the order they are placed on the vehicle. The main navigation bar enables user to do various operations, such as adding new sticker, editing the sticker, removing the sticker, exiting the panel, saving and loading paintjobs and displaying user guide.

## How to use

### Adding sticker

To add the sticker you need to simply click on the plus (+) icon on the main navigation bar. A new window will appear containing a paginated list of available stickers. To select a desired sticker you just click on it. The sticker will be automatically added to the layering stack and the window with stickers list will close.

The following screenshot desctibes the process of adding a sticker.

![mta-screen_2024-04-06_15-03-06](https://github.com/gbd850/vehicle-stickers-archive/assets/46139681/86643941-1099-4ef6-a0d3-65aaaa7c7492)

### Editing sticker

To edit a sticker you need to firstly select the desired sticker from the layers panel by simply clicking on it. When you do that the buttons for edit and delete will become interactable. In order to start editing the sticker you just need to click on the edit button. The editing subwindow will appear, giving you options to transform the sticker.
Transforming operations include:
* Move
* Scale (both in X and Y directions separately)
* Rotate
* Change color
* Mirror

To accept transformation made to the sticker just simply click the apply icon (✓). The edit subpanel will close automatically.

The following screenshot desctibes the process of editing a sticker.

![mta-screen_2024-04-06_15-03-19](https://github.com/gbd850/vehicle-stickers-archive/assets/46139681/dcb0bbb2-2085-4c1d-9fa9-314f542b8607)

The following screenshot shows the color changing subwindow.

![mta-screen_2024-04-06_15-03-24](https://github.com/gbd850/vehicle-stickers-archive/assets/46139681/2c2ee50a-ce8f-432c-9de0-84083e4d7877)

### Deleting sticker

To delete a sticker you need to firstly select the desired sticker from the layers panel by simply clicking on it. When you do that the buttons for edit and delete will become interactable. In order to delete the sticker just click the delete button (bin icon).

## Specification

The project was written in Lua and HLSL to create dynamic shaders to load and layer stickers on top of the vehicle's paint. The HLSL shader uses a util shader file (delivered by MTA team) with useful functions for using shaders in MTA ([MTA shader wiki page](https://wiki.multitheftauto.com/wiki/Element/Shader)). The GUI uses Lua coroutines and neatly implemented pagination in order to dynamically load stickers to the available stickers list.

## Screenshots

![mta-screen_2024-04-06_15-02-59](https://github.com/gbd850/vehicle-stickers-archive/assets/46139681/8d7531df-f4a0-4edc-9251-c31c94b7f352)

![mta-screen_2024-04-06_15-03-06](https://github.com/gbd850/vehicle-stickers-archive/assets/46139681/328f7b77-bf81-48ea-8e2b-0d8a59935d63)

![mta-screen_2024-04-06_15-03-19](https://github.com/gbd850/vehicle-stickers-archive/assets/46139681/5fccdcbe-1541-427c-9d51-71ed76fb2f95)

![mta-screen_2024-04-06_15-03-24](https://github.com/gbd850/vehicle-stickers-archive/assets/46139681/375afdf9-f55f-4744-923d-c479b4fee4a9)

![mta-screen_2024-04-06_15-03-42](https://github.com/gbd850/vehicle-stickers-archive/assets/46139681/79e1e80e-3871-4bde-b9f7-ae69bf739879)

![mta-screen_2024-04-06_15-03-50](https://github.com/gbd850/vehicle-stickers-archive/assets/46139681/a3848fd7-c04b-4ce5-adc9-e69898c833a5)
