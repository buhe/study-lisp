(defsystem "hello"
    :description "A hello world library"
    :version "0.0.1"
    :author "Michael Anckaert <michael.anckaert@sinax.be"
    :license "MIT"
    :depends-on (#:cl-tui :jsown :drakma)
    :components ((:file "hello2")))