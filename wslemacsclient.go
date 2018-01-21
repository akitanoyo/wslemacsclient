
package main

import (
    "flag"
    "os"
    "os/exec"
    "path/filepath"
    "syscall"
)

func main() {
    flag.Parse()
    arg := flag.Args()
    if len(arg) > 0 {
        dir := filepath.Dir(arg[0])
        fname := filepath.Base(arg[0])
        path, err := exec.LookPath("wsl")
        if err != nil {
            return
        }
        os.Chdir(dir)
        cmd := exec.Command(path, "emacsclient",  "-q",  "-n",  fname)
        // 実行windowを非表示にする
        cmd.SysProcAttr = &syscall.SysProcAttr{HideWindow :true}
        err = cmd.Run()
        if err != nil {
            return
        }
    }
}
