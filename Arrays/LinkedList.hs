type LinkedList a = [a]

pushAtEnd :: a -> LinkedList a -> LinkedList a
pushAtEnd n [] = [n]
pushAtEnd n (x:xs) = x : pushAtEnd n xs

pushAtStart :: a -> LinkedList a -> LinkedList a
pushAtStart n xs = n : xs

insertAfter :: Eq a => a -> LinkedList a -> a -> LinkedList a
insertAfter _ [] _ = []
insertAfter a (x:xs) b
	| a == x    = x : b : xs
	| otherwise = x : insertAfter a xs b

insertBefore :: Eq a => a -> LinkedList a -> a -> LinkedList a
insertBefore _ [] _ = []
insertBefore a (x:xs) b
	| x == a = b : x : xs
	| otherwise = x : insertBefore a xs b

