function set-wallpaper {
    param ()
        Copy-Item .\Einride_Pod.jpg $env:USERPROFILE\Pictures\Einride_Pod.jpg
        $desktopImage ="$env:USERPROFILE\Pictures\Einride_Pod.jpg"
        $desktopSettings = "HKCU:\Control Panel\Desktop"
        
        
        set-itemproperty -path $desktopSettings -name WallPaper -value $desktopImage
        rundll32.exe user32.dll, UpdatePerUserSystemParameters 
        rundll32.exe user32.dll, UpdatePerUserSystemParameters
}
set-wallpaper
