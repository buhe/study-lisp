
Project must be in ~/.roswell/local-projects/
```
ros run
```

### At REPL
```
# install depend-on
(ql:quickload "hello")

(asdf:load-system "hello")
(hello:start)
```

### Test http
```
(dex:get "http://baidu.com")
```

### Test JSON
```
(jsown:parse "{\"foo\":\"bar\",\"baz\":100.25}")
```