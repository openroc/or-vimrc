or-vimrc
========

How to Install
--------

 * Download or-vimrc
 
         git clone git://github.com/openroc/or-vimrc.git

 * Backup your old stuffs, Link vim to .vim and vimrc to .vimrc, then create a dir named "bundle" in .vim

         cd or-vimrc
         ln -sf . ~/.vim
         ln -sf vimrc ~/.vimrc
         mkdir -p ~/.vim/bundle

 * In Vim console, input below command, and waiting the installation of the bundle plugins

         :BundleInstall

 * Done and enjoy it. :)

Plugin List
--------

####Bundles Shortkey

       Bundle Name : ShortKey   : Description
    ---------------:------------:-----------------------------------------------   
            TagBar : ,t         : Show tag list
          NerdTree : ,e         : Show file explore window
               Ack : ,a         : Find sub string in current dir
             Ctrlp : <ctrl>+p   : Find file in current dir
             GUndo : <ctrl>+u   : Show Undo Tree
     NeoComplCache :            : Auto completion
     NerdCommenter :            : Add/Remove comment
          SuperTab :            : SuperTab
         Syntastic :            : Static program check
            TabBar :            : Mini Top Buffer List
           Tabular :            : Make text to tab format
          SnipMate :            : Auto extend a keyword to some pre-define format
          Fugitive :            : Git
        EasyMotion :            : Easily goto some word/letter



####Other plugin

       Plugin Name : ShortKey   : Description
    ---------------:------------:-----------------------------------------------   
             VimIM :            : Input chinese via cloud input method
               VSC :            : CVS/SVN/GIT
         CscopeMap :            : Add key-mapping for cscope
       PythonUtils :            : Detect python folds and python functions
               Xml :            : Xml utilities
             GTags :            : Like ctags

