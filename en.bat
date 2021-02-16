@echo off
setlocal
cd /d %~dp0
mkdir res_en
set /p lang="Which language should be used as a base? Audio and video will be used from here. (ru,pl,cz) "
robocopy res_%lang% res_en /E
powershell Expand-Archive res_en.zip -DestinationPath res_en -Force

cd res
Rem There are most certainly better ways of doing this. I'm not doing any of them.
powershell -Command "$filepath = 'sc_lang_menu.xml';$lang = Get-Content $filepath;$lang[10]='  <GUIMNGR>';$lang[16]='  </GUIMNGR>';$lang[17]='  <!--GUIMNGR>';$lang[22]='  </GUIMNGR-->';$lang | Set-Content sc_lang_menu.xml"

set /p credits="Would you like to add additional credits? (y/n) "
if %credits%==y (
	powershell -Command "$credits = Get-Content credits.xml;$credits=$credits[0..136]+'<TEXT id=\"STR_CREDITS_COMMUNITY_001\" font=\"ElectroDcLightblueBlue_54.fnt\" ofs=\"60\" text=\"English Fan Translation\"/>'+'<TEXT id=\"STR_CREDITS_COMMUNITY_002\" font=\"ElectroDcYellowRed_27.fnt\" ofs=\"60\" text=\"Organization\"/>'+'<TEXT id=\"STR_CREDITS_COMMUNITY_003\" font=\"ElectroDcRedYellowBack_27.fnt\" ofs=\"40\" text=\"ChainSwordCS\"/>'+'<TEXT id=\"STR_CREDITS_COMMUNITY_004\" font=\"ElectroDcRedYellowBack_27.fnt\" ofs=\"40\" text=\"Eiim\"/>'+'<TEXT id=\"STR_CREDITS_COMMUNITY_005\" font=\"ElectroDcYellowRed_27.fnt\" ofs=\"50\" text=\"Translation\"/>'+'<TEXT id=\"STR_CREDITS_COMMUNITY_006\" font=\"ElectroDcRedYellowBack_27.fnt\" ofs=\"40\" text=\"Eiim\"/>'+'<TEXT id=\"STR_CREDITS_COMMUNITY_007\" font=\"ElectroDcYellowRed_27.fnt\" ofs=\"50\" text=\"Graphics\"/>'+'<TEXT id=\"STR_CREDITS_COMMUNITY_008\" font=\"ElectroDcRedYellowBack_27.fnt\" ofs=\"40\" text=\"LukePlays\"/>'+'<TEXT id=\"STR_CREDITS_COMMUNITY_009\" font=\"ElectroDcYellowRed_27.fnt\" ofs=\"50\" text=\"Programming\"/>'+'<TEXT id=\"STR_CREDITS_COMMUNITY_010\" font=\"ElectroDcRedYellowBack_27.fnt\" ofs=\"40\" text=\"Eiim\"/>'+'<TEXT id=\"STR_CREDITS_COMMUNITY_011\" font=\"ElectroDcYellowRed_27.fnt\" ofs=\"50\" text=\"Translation Help\"/>'+'<TEXT id=\"STR_CREDITS_COMMUNITY_012\" font=\"ElectroDcRedYellowBack_27.fnt\" ofs=\"40\" text=\"ChainSwordCS\"/>'+$credits[137];$credits | Set-Content credits.xml"
)

cd /d %~dp0
xcopy res_en\00000505\00003178.png res_ru\00000505\00003178.png /y /v /s

exit /b

Rem Thanks to Artem and Rachel of StackOverflow