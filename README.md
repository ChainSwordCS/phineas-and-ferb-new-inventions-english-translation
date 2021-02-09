# phineas-and-ferb-new-inventions-english-translation

WIP English Fan Translation for PC game "Phineas and Ferb: New Inventions", a PC game for Windows.

Buy the game here: https://store.steampowered.com/app/318300/Phineas_and_Ferb_New_Inventions/

# Licensing

Currently, please do not redistribute this without my (ChainSwordCS) express permission. The team will work out a proper license at some point in the near future.

Feel free to link to this Github repo and share it.

# Installation

* Download **texts.xml** from the latest release.

* *texts.xml* goes in \res_ru\ inside the game directory, replacing the *texts.xml* file already there.

  * In a Steam installation, this is C:\Program Files (x86)\Steam\steamapps\common\Phineas and Ferb New Inventions\res_ru\
  
  * Alternatively that directory may be in the \Program Files\ instead of \Program Files (x86)\

### Building from Source

Python 3 is required.

Run **CsvToXml.py** with **P&F NI Translation Spreadsheet - Sheet1.csv** in the same folder. It will output **texts.xml** which can be installed via the install instructions above.

**CsvToXml.py** takes a csv with translation information and constructs an XML file which can be used for the patch. Currently, it is hardcoded to take a csv with the name "P&F NI Translation Spreadsheet - Sheet1.csv" with string IDs in the first column and English translation in the 8th column, from the second row down. These parameters may be relaxed in the future, but are also easy to change by editing the file.

### Uninstall

The English language patch is currently built to replace the Russian language. For uninstalling the current version:

* Download the Russian *texts.xml* 

  * Right-click the link and click "Save Link As" to download.
  
  * Alternatively, left-click the link then right click inside the page and click "Save Page As"
  
  * https://ia801403.us.archive.org/view_archive.php?archive=/18/items/phineas-and-ferb-new-inventions/Phineas%20and%20Ferb%20-%20New%20Inventions.zip&file=res_ru%2Ftexts.xml
  
* Place this *texts.xml* file in \res_ru\ inside the game directory.

  * If downloaded through Steam on Windows, the directory is C:\Program Files (x86)\Steam\steamapps\common\Phineas and Ferb New Inventions\res_ru\
  
  * Alternatively, the directory might be C:\Program Files\Steam\steamapps\common\Phineas and Ferb New Inventions\res_ru\
  
If any other files were deleted or replaced, you could try to restore files through Steam with some instructions here (untested): https://www.easeus.com/file-recovery/restore-lost-steam-game-file.html

Alternatively, you could redownload specific files from the archive. https://archive.org/details/phineas-and-ferb-new-inventions

# Credits

ChainSwordCS - Organization, translation.

Eiim - Organization, translation, programming.

(More to come)
