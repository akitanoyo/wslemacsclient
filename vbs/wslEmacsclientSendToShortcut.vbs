
Set sh = Wscript.CreateObject("WScript.Shell")

path = sh.ExpandEnvironmentStrings("%USERPROFILE%") & "\\AppData\\Roaming\\Microsoft\\Windows\\SendTo"

Set shortcut = sh.CreateShortcut(path & "\\wslEmacsclient.lnk")
shortcut.TargetPath = sh.CurrentDirectory & "\\wslEmacsclient.vbs"
shortcut.IconLocation = sh.CurrentDirectory & "\\Emacs-icon.ico, 0"
shortcut.Save
