-- Codigo/Notas da aula 02 de Funcional lecionada pelo Ades no ICMC --

main = do
    putStrLn "Hello World"
    putStrLn $ show $ f $ y > 3
    putStrLn $ show $ fat 5
    putStrLn $ show $ fibo 5
    putStrLn $ show $ reverse $ l3
    putStrLn $ show $ head $ tail $ tail l3


x = x + 1
y = 6
a = True
b = False

f False = 5
f True = 4

h 0 = 1
h x = x * h (x - 1)


-- Fatorial --
fat n = if n == 0
            then 1
            else n * fat(n - 1)
     
-- Fibonacci --
fibo n = if n == 0
            then 1
            else if n == 1
            then 1
            else fibo(n - 1) + fibo(n - 2)
            
l1 = []
l2 = [5]
l3 = [6, 10, 42]

s [] = 0 
s (x:xs) = x + s xs
