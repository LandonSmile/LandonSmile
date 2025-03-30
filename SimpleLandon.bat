@echo off
:: Set wallpaper to solid red using registry settings
REG ADD "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d "2" /f
REG ADD "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%SystemRoot%\Web\Wallpaper\solid_red.bmp" /f

:: Make sure to apply the wallpaper change immediately
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

:: Wait for 10 seconds
timeout /t 10

:: Restart the computer
shutdown /r /f /t 0
