type Queue a = [a]

emptyQueue :: Queue a
emptyQueue = []

enqueue :: a -> Queue a -> Queue a
enqueue x q = q ++ [x]

dequeue :: Queue a -> (a, Queue a)
dequeue [] = error "Empty Stack"
dequeue (x:xs) = (x, xs)

peek :: Queue a -> a
peek (x:xs) = x

