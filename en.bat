@echo off
setlocal
cd /d %~dp0
mkdir res_en
set /p lang="Which language should be used as a base? Audio and video will be used from here. (ru,pl,cz)"
robocopy res_%lang% res_en /E
powershell Expand-Archive res_en.zip -DestinationPath res_en -Force

cd res
Rem There are most certainly better ways of doing this. I'm not doing any of them.
powershell -Command "(gc sc_lang_menu.xml) -replace '<GUIMNGR>', '<GUIMNGR2>' | Out-File -encoding ascii sc_lang_menu.xml"
powershell -Command "(gc sc_lang_menu.xml) -replace '</GUIMNGR>', '</GUIMNGR2>' | Out-File -encoding ascii sc_lang_menu.xml"
powershell -Command "(gc sc_lang_menu.xml) -replace '<!--GUIMNGR>', '<GUIMNGR>' | Out-File -encoding ascii sc_lang_menu.xml"
powershell -Command "(gc sc_lang_menu.xml) -replace '</GUIMNGR-->', '</GUIMNGR>' | Out-File -encoding ascii sc_lang_menu.xml"
powershell -Command "(gc sc_lang_menu.xml) -replace '<GUIMNGR2>', '<!--GUIMNGR>' | Out-File -encoding ascii sc_lang_menu.xml"
powershell -Command "(gc sc_lang_menu.xml) -replace '</GUIMNGR2>', '<GUIMNGR-->' | Out-File -encoding ascii sc_lang_menu.xml"

Rem exit /b

Rem Thanks to Artem and Rachel of StackOverflow