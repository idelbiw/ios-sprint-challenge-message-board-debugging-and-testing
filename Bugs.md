Bugs
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Problem #1:
The app won't create a thread when tapping return on the keyboard with the textField selected and a string value already exists within it

-- -- Solution #1:
the " .resume() " was missing at the end of the url session data task, i tried to change the firebase url to my own firebase before realising that the little resume method was missing

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Problem #2:
The title of the thread won't show in the title bar in the the detail view

-- -- Solution #2:


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Problem #3:
The table view will only dispay newly created threads if the user taps or swipes on the table view after hitting return, this is because we are calling tableView.reloadData() on a background thread

-- -- Solution #3:
simply move the tableView.reloadData() to be called on the main Queue, (DispatchQueue.main.async() { tableView.reloadData() } 

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Problem #4:
