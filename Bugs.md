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
In the prepareForSegue method, the segue identifier was misspelled and missing an 's'

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Problem #3:
The table view will only dispay newly created threads if the user taps or swipes on the table view after hitting return, this is because we are calling tableView.reloadData() on a background thread

-- -- Solution #3:
simply move the tableView.reloadData() to be called on the main Queue, (DispatchQueue.main.async() { tableView.reloadData() } 

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Problem #4:
when creating a message, the cancel button doesn't do anything

-- -- Solution #4:
just call dismiss(true) in the IBAction of the cancel button, because there wasn't any code written in there

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Problem #5:
when trying to send a message in a thread, the send button doesn't seem to be working

-- -- Solution #5:
the segue identifier was once again misspelled, just needed an 's', also: In the prepare for segue of the messageThreadsDetailViewController, the destination was being treated as the message detail view controller, which is wrong because the destination is the navigation controller (This problem was more than one problem lol)

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --


