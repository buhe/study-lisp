
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
(drakma:http-request "https://baidu.com")

(drakma:http-request "https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty")
(flexi-streams:octets-to-string *)
```
### Test JSON
```
(jsown:parse "{\"foo\":\"bar\",\"baz\":100.25}")
```

### Emacs + slime

#### reinstall quicklisp at ~/.quicklisp
- https://lisp-lang.org/learn/getting-started/
- Project must be in ~/.quicklisp/local-projects