set name=SNKRX_Modded
call "C:\Program Files\7-Zip\7z.exe" a -r %name%.zip -w ..\..\ -xr!engine/love -xr!builds -xr!steam -xr!.git -xr!*.moon -xr!conf.lua
rename %name%.zip %name%.love
copy /b "love.exe"+"%name%.love" "%name%.exe"
del %name%.love
mkdir %name%
for %%I in (*.dll) do copy %%I %name%\
for %%I in (*.txt) do copy %%I %name%\
copy %name%.exe %name%\
del %name%.exe
call "C:\Program Files\7-Zip\7z.exe" a %name%.zip %name%\
del /q %name%\
rmdir /q %name%\
copy %name%.zip ..\..\builds\windows\
del %name%.zip
