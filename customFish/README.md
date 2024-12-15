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

## Start Making Fish

### Setting up

Now that we have our environment setup let's add the relevant folders and files we'll be using to add our fish. Inside the folder for your mod add a `Resources` and `Assets` folder. Your folder structure should now look something like this
<pre>
res://
└── mods/
    ├── Sulayre.Lure/
    │   └── ...
    └── YourAuthorName.YourModName/
        ├── Resources/
        ├── Assets/
        └── main.gd
</pre>
The Resources folder will be where you keep your .tres files (basically the data for your fish; size, rarity, value, etc.).
The Assets folder is where the .png images for your fish are gunna go.
And the main.gd file is the script that's going to bring it all together.

### Making Your Fish
Most of the fish in this game are 256x256 pixels in size with a few exceptions. You can look at the base fish in the game to see what other sizes are used or you can expirement with sizes yourself to see how the look in game. For this guide we will just stick with 256x256.

I like to use [Photopea](https://www.photopea.com) for anything 2d, so that's what we'll use to make our fish. If you haven't heard of it or used it before it's basically free photoshop you can use in your browser without downloading anything. If you prefer to use something else then you can skip this next section, just remember to make your image 256x256(or whatever size format you're gunna use), make the background transparent, and export it as a .png .

#### Photopea
* Click `New Project`
* Name it whatever you want
* Make `height` and `width` 256x256
* Change background to `transparent`
* Click create

Now you can create your fish however you want. If you aren't familiar with photopea there are plenty of tutorials, Guides, and videos on just about everything it can do. If you're new and unsure where to start you can search "fish template png" and find a simple template to import into your photopea space. To do that click `File -> Open & Place` and select your template image. then just resize it to fit inside your canvas and work from there. There is a simple template png of a fish in the templates folder of this github if you want to use that.

If you have any whitespace around your fish or any kind of solid background you can use the `Magic Wand` tool to select the background and press `del` to remove it

Now that you have a cool new fish it's time to export it.
* Click `File -> Export As -> PNG`
* Enter a name if you haven't yet
* Click save
You can either save it directly into your `Assets` folder or you can save it in another location and copy it into `Assets`.

## The Tres File

Now that you have your fish made it's time to get the .tres file ready. The .tres file is what is gunna tell the game where you can catch the fish, how rare it is, how hard to catch it is, it's name, description, etc., etc...
There is a template .tres file in the `templates` folder of this github. download that and copy it into your `Resources` folder. Rename it to whatever your fish is gunna be called. I like to make my png and tres names the same to keep things simple later on. So if your png is `customBass.png` rename the tres to `customBass.tres` From there you can either edit it from the Godot editor, or open it in a text editor and edit it there. I suggest using something like VSCode or Notepad++ to edit the file directly.

There are some lines that you won't need to touch, so we won't go over those. We will take a look at the ones that matter to us. 

At the top you'll see 2 `[ext_resource]` lines. In the second line you'll want to change the `path=""` to point to your png file for this fish. ex. `[ext_resource path="res://mods/Steve.MyCoolFish/Assets/customBass.png" type="Texture" id=2]`

The rest of the lines that matter to us I will try to explain what they do to the best of my knowledge. I'm not an expert but if I find out more info I'll make sure to update this guide. On a side note if you have more info that I don't or if I got something wrong, reach out to me on the modding discord and I'll make sure to update the table.

|Value|Means|
|-----|-----|
|string|Anything inside ""|
|bool|true/false|
|int|whole number, ie 7|
|float|decimal,  ie 7.123|

|Property|Value|Description|
|--------|-----|-----------|
|item_name|"string"|Name that shows when you catch and on tooltip when you hover in your inventory|
|item_description|"string"|Shows below name in tooltip|
|catch_blurb|"string"|Shows when you catch it, usually a "joke"|
|hold_offset|float|How far away you hold it when you catch or equip. Default value should be ok|
|tier|int|Tier of the fish; 0,1,2|
|catch_difficulty|float|Affects how many clicks to catch|
|catch_speed|float|Affects speed of reel when catching|
|loot_table|"string"|lake, ocean, void, water_trash|
|loot_weight|float|How rare it is compared to other fish in the pool|
|average_size|float|Above 100 for really big, below 100 for really small|
|sell_value|int|How much it sells for|
|sell_multiplier|float|Affects value based on rarity|
|obtain_xp|int|Xp gained from catching successfully|
|rare|bool|Weather or not its considered rare like the golden fish and rain fish|
