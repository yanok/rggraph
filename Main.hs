module Main where

import Diagram
import Graph
import Theory.Phi3
import LinComb

printDiagram (Diagram d) = do
  putStr $ show d
  putStrLn ""

printLC lc f = mapM_ printOne lc where
  printOne (e,c) = do
    putStrLn $ show c
    f e

printLCD lc = printLC lc printDiagram

expandD th str = printLCD $ runLC ds where
  ds = diagramPutDots th d
  d = buildDiagramStr str

printAS (a,s) = do
  putStrLn $ show a
  putStrLn $ s
  
printLCAS lc = printLC lc printAS

expandS th str =
  printLCAS $ runLC $ fmap (\d -> (diagramAOps th d,diagramSymbolize d n pairs)) ds where
    ds = diagramPutDots th d
    d = buildDiagramStr str
    n = nrLoops d
    pairs = diagramAllMomentPairs d'
    Diagram d' = fst $ head $ runLC ds
