(defun clear () 
  (format t "~c[2J~c[H~c[?25l" #\Esc #\Esc #\Esc)
)


(defun rep(x f)(
   do ( ( i 1 (+ i 1) ) )   
       ((> i x))
       (eval f)
   )
)


(defun screen ()
   (
    rep 10 '(progn (rep 20 '(princ "#")) (format t "~%")) 
   )
)

(defun pixel(x y)
  (format t "~c[~d;~dH*" #\Esc y x)
)

(defun push_state() (format t "~c[s" #\Esc))
(defun pop_state()  (format t "~c[u" #\Esc))


(
 progn
(clear)
(screen)
(push_state)
(pixel 5 2)
(pixel 6 3)
(pop_state)
(force-output)
(read)
)







