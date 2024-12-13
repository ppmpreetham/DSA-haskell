type Stack a = [a]

emptyStack :: Stack a
emptyStack = []

push :: a -> Stack a -> Stack a
push element stack = element : stack

peek :: Stack a -> a
peek [] = error "Empty list"
peek (x : _) = x

pop :: Stack a -> (a, Stack a)
pop [] = error "Empty list"
pop (x : xs) = (x, xs)

main :: IO ()
main = do
    let stack = [1, 2, 3]
    print $ peek stack
    let (poppedValue, newStack) = pop stack
    print poppedValue
    print newStack