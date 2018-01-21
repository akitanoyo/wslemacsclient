
wsl上にemacsが既にインストール済みである

* [emacs準備](#emacs)
* [windowsエクスプローラーからプログラムから開くでwsl上のemacsで開かれる](#exploler2wslemacs)
* エクスプローラーから送る



## <a name="emacs">emacsの準備</a>  

init.el  

```
(require 'server)

(unless (server-running-p)
  (server-start))
```

## <a name="exploler2wslemacs">windowsエクスプローラーからプログラムから開くでwsl上のemacsで開かれる</a>

### 流れ

エクスプローラーで開く  
　　↓  
c:/wsl/wslemacsclient.exe  
　　↓  
wsl.exe  
　　↓  
emacsclient  
　　↓  
emacs  













icon データ  
http://www.iconarchive.com/show/button-ui-requests-6-icons-by-blackvariant/Emacs-icon.html

