
var sh = new ActiveXObject("WScript.Shell");

var path = sh.ExpandEnvironmentStrings("%USERPROFILE%") + "\\AppData\\Roaming\\Microsoft\\Windows\\SendTo";

var shortcut = sh.CreateShortcut(path + "\\wslEmacsclient.lnk");
shortcut.TargetPath = sh.CurrentDirectory + "\\wslEmacsclient.js";
shortcut.IconLocation = sh.CurrentDirectory + "\\Emacs-icon.ico, 0";
shortcut.Save();
