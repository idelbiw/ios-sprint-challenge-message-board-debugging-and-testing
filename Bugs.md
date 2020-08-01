Bugs

-- Problem #1:
The app won't create a thread when tapping return on the keyboard with the textField selected and a string value already exists within it

-- -- Solution #1:
the " .resume() " was missing at the end of the url session data task, i tried to change the firebase url to my own firebase before realising that the little resume method was missing


-- Problem #2:
