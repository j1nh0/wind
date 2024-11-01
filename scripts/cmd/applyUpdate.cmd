@echo OFF
dism /mount-image /imagefile:Source\sources\install.wim /index:1 /mountdir:Mount\ /scratchdir:Scratch
for %%M in (MSU\*) do dism /image:Mount\ /add-package /packagePath:%%M /scratchdir:Scratch
dism /unmount-image /mountdir:Mount\ /commit /scratchdir:Scratch
echo ####
echo 'Update complete!'
echo ####