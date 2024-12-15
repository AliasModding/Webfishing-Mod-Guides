# Webfishing-Mod-Guides
Guides for making different kinds of mods for a game called webfishing

# Table of Contents

## Before we get started...
### Set up the environment

Before you start make sure you have your modding environment set up and ready to start making mods. If you haven't already decompiled the game you can follow [BlueberryWolf's guide](https://github.com/BlueberryWolf/WEBFISHINGModdingGuide) up to section 5 to get set up.

### Get Sulayre's Lure mod

To make custom fish and add them to the game, we will be using [Sulayre's Lure mod](https://github.com/Sulayre/WebfishingLure). 
* Download the zip file from the code button, not from the releases page, and extract it somewhere temporary.
* Open the extracted folder and navigate to `/WebfishingLure-main/project/mods`
* Copy the Sulayre.Lure folder into the mods folder of your webfishing mod environment.
  * Your mods folder should now include a `Sulayre.Lure` folder and `YourAuthorName.YourModName` folder

### Auto load the Lure mod
For your testing to work correctly in the editor you need to autoload the Lure mod above any other mods you make or import.
* In your editor click on `Project -> Project Settings`
* Click the `autoload` tab
* Next to the `Path` text field click the folder button
* Navigate to `/mods/Sulayre.Lure` and select the main.gd file
* In the mod name field name it `SulayreLure`
  * You will use this naming scheme for any other mods you make or import. so if you have a mod in your folder called `Someguy.ReallyCoolMod` then you would name it `SomeguyReallyCoolMod` in the autoload name field. Basically just remove the period.
* Click add, and you should now see it added to the bottom of the list
* If you have already begun making mods and have things autoloaded but are adding Lure for the first time, make sure you drag Lure above the mods

While your still in the autoload section go ahead and repeat the steps above to add your mods main.gd to the autoload list





