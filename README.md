
wsl上にemacsが既にインストール済みが前提です  
Windows 10 Fall Creators Update済みの環境で試しました。  
他の環境の動作確認してないです…動いたら報告をしていただければ幸いです。  


<span style="color:red;">wslでemacsが起動している状態じゃないと送るや開くを選んでもemacsは、立ち上がりませんあしからず…</span>  


* [emacs準備](#emacs)
* [エクスプローラーから送るでwslのemacsで開く場合](#exploler2wslemacsscript)
* [windowsエクスプローラーでファイルをダブルクリックでwslのemacsで開きたい場合](#exploler2wslemacs)


## <a name="emacs">emacsの準備</a>  

init.el  

```
(require 'server)

(unless (server-running-p)
  (server-start))
```

## <a name="exploler2wslemacsscript">エクスプローラーから送るでwslのemacsで開く場合</a>

golangで作成したexeでもできるかと思いますが（試してない）jsやvbsの方が軽くて早いし、送るへのショットカットを作る  
スクリプトも入っているので手間も少なくて済みます。  

vbsのフォルダがvbs版で、jsのフォルダがJScript(JavaScript)版です。(お好みの方をお使いください)  
wslEmacsclientSendToShortcut をダブルクリックするとエクスプローラーの送るの項目に wslEmacsclient が追加されます。  

エクスプローラーで複数選択して右クリック→送る→wslEmacsclient  

wslEmacsclient→wsl→emacsclient→emacsで開かれます。（開かれるはずです。）  


## <a name="exploler2wslemacs">windowsエクスプローラーでファイルをダブルクリックでwslのemacsで開きたい場合</a>

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

### 設定（登録）

エクスプローラー→  
開きたいファイルで右クリク→  
プログラムから開く→  
別のプログラムを選択→  
常にこのアプリを使って .xx ファイルを開くにチェックを入れ→  
その他のアプリ→  
このPCで別のアプリを探す→  
ファイルダイアログから c:\wsl\のwslemacsclient.exeを選択してから開くを押す  


## 使用した emacs icon データ  
http://www.iconarchive.com/show/button-ui-requests-6-icons-by-blackvariant/Emacs-icon.html

