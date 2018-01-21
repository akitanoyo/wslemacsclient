var sh = new ActiveXObject("WScript.Shell");
var fs  = WScript.CreateObject("Scripting.FileSystemObject");

for (var n = 0; n < WScript.Arguments.length; n++) {
  var path = fs.GetFile(WScript.Arguments(n));
  var fname = fs.GetFileName(path);
  var dir = path.ParentFolder.Path;
  sh.CurrentDirectory = dir;
  sh.Run("wsl emacsclient -q -n " + fname, 0, false);
}

fs = null;
sh = null;
