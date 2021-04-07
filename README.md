# phineas-and-ferb-new-inventions-english-translation

WIP English Fan Translation for PC game "Phineas and Ferb: New Inventions", a PC game for Windows.

Buy the game here: https://store.steampowered.com/app/318300/Phineas_and_Ferb_New_Inventions/

# Licensing

The code, translations, and images are licensed under CC-BY-SA 4.0. You can find more information in the LICENSE file.

Feel free to link to this Github repo and share it.

# Installation

* Download **en.bat** and **res_en.zip** from the Releases page.

* Put both files in the game directory and run **en.bat**.

  * In a Steam installation, this is C:\Program Files (x86)\Steam\steamapps\common\Phineas and Ferb New Inventions\
  
  * Alternatively that directory may be in the \Program Files\ instead of \Program Files (x86)\
  
* It will ask you for some options.

  * For the base game files, any language can be selected, according to your preferences.
  
  * For the additional credits, it is recommended to select "y" **unless** you have already installed with additional credits. In that case select "n". (Eiim does not currently remember if it breaks in this scenario)
  
Afterwards, run Lang.exe to set the language to English.

### Building from Source (This info needs updated)

Python 3 is required.

Run **CsvToXml.py** with **P&F NI Translation Spreadsheet - Sheet1.csv** in the same folder. It will output **texts.xml** which can be installed via the install instructions above.

**CsvToXml.py** takes a csv with translation information and constructs an XML file which can be used for the patch. Currently, it is hardcoded to take a csv with the name "P&F NI Translation Spreadsheet - Sheet1.csv" with string IDs in the first column and English translation in the 8th column, from the second row down. These parameters may be relaxed in the future, but are also easy to change by editing the file.

The most up-to-date csv file can be retrieved from this spreadsheet: https://docs.google.com/spreadsheets/d/1WyuN7qDPnx94T2Ksw-q3NR_6zvCv9O3kyrLqZrvS_z4/edit?usp=sharing

### Uninstall

The English language patch is currently built to replace only a few files! For uninstalling the current version:

* Download *res/sc_lang_menu.xml*, *res/credits.xml*, and *res_ru\00000505\00003178.png*

  * Right-click the link and click "Save Link As" to download.
  
  * Alternatively, left-click the link then right click inside the page and click "Save Page As"
  
  * https://ia801403.us.archive.org/view_archive.php?archive=/18/items/phineas-and-ferb-new-inventions/
  
If any other files were deleted or replaced, you could try to restore files through Steam with some instructions here (untested): https://www.easeus.com/file-recovery/restore-lost-steam-game-file.html

Alternatively, you could redownload specific files from the archive. https://archive.org/details/phineas-and-ferb-new-inventions

# Contribute to the Translation

To contribute to the translation, please leave a comment or suggestion on this spreadsheet: https://docs.google.com/spreadsheets/d/1WyuN7qDPnx94T2Ksw-q3NR_6zvCv9O3kyrLqZrvS_z4/edit?usp=sharing

A member of our team will get to it and will incorporate it if they see fit. Feel free to leave your username if you are not logged in, and you can be credited.

# Credits

ChainSwordCS - Organization, translation help.

Eiim - Organization, translation, programming.

LukePlays - Graphics.

(More to come)
