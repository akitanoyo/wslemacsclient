Set sh = WScript.CreateObject("WScript.Shell")
Set fs = CreateObject("Scripting.FileSystemObject")

Set objArgs = WScript.Arguments
For n = 0 to objArgs.Count - 1
  Set path = fs.GetFile(objArgs(n))
  fname = fs.GetFileName(path)
  Set dir = path.ParentFolder
  sh.CurrentDirectory = dir
  sh.Run "wsl emacsclient -q -n " & fname, 0, false
Next

Set fs = Nothing
Set sh = Nothing
