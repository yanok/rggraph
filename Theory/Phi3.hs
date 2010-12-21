module Theory.Phi3 where

import Theory

phi3 = Th {
  tailsSignDiagram = [2,3],
  spaceDimension = 6,
  elementDivIndex = phi3DivIndex
  }

phi3DivIndex' DVertex = 0
phi3DivIndex' DProp = -2

modsDivIndex "dMu2" = -2
modsDivIndex "dP" = -1
modsDivIndex _ = 0 -- that's not quite true cause "dA_*" mods DO change divIndex but we can ignore this

-- FIXME!! actually mods can have different effects for different types of elements
phi3DivIndex ((t,m),mods) =
  (phi3DivIndex' t) + (sum $ map modsDivIndex mods)

-- diagrams for some Green functions
phi3G2_1 = [
  ("e11-e-",1/2)
  ]

phi3G3_1 :: [(String,Double)]
phi3G3_1 = [
  ("e12-e2-e-",1)
  ]

phi3G2_2 = [
  ("e12-e3-33--",1/2),
  ("e12-23-3-e-",1/2)
  ]

phi3G3_2 = [
  ("e12-e3-e4-44--",3/2),
  ("e12-e3-34-4-e-",3),
  ("e12-34-34-e-e-",1/2)
  ]

phi3G2_3 = [
  ("e12-e3-34-5-55--",1/2),
  ("e12-e3-44-55-5--",1/4),
  ("e12-e3-45-45-5--",1/2),
  ("e12-23-4-e5-55--",1),
  ("e12-23-4-45-5-e-",1/2),
  ("e12-33-44-5-5-e-",1/8),
  ("e12-34-34-5-5-e-",1/4),
  ("e12-34-35-e-55--",1/4),
  ("e12-34-35-4-5-e-",1)
  ]

phi3G3_3 = [
  ("e12-e3-e4-45-6-66--",3/2),
  ("e12-e3-e4-55-66-6--",3/4),
  ("e12-e3-e4-56-56-6--",3/2),
  ("e12-e3-34-5-e6-66--",3),
  ("e12-e3-34-5-56-6-e-",3),
  ("e12-e3-44-55-6-6-e-",3/4),
  ("e12-e3-44-56-5-6-e-",3),
  ("e12-e3-45-45-6-6-e-",3/2),
  ("e12-e3-45-46-e-66--",3/2),
  ("e12-e3-45-46-5-6-e-",6),
  ("e12-23-4-e5-e6-66--",3/2),
  ("e12-23-4-e5-56-6-e-",3),
  ("e12-23-4-56-56-e-e-",3/2),
  ("e12-33-45-6-e6-e6--",3/2),
  ("e12-34-35-6-e5-6-e-",3),
  ("e12-34-35-6-e6-e6--",1),
  ("e12-34-56-e5-e6-6--",1)
  ]

phi3G2_4 = [
  ("e12-e3-34-5-56-7-77--",1/2),
  ("e12-e3-34-5-66-77-7--",1/4),
  ("e12-e3-34-5-67-67-7--",1/2),
  ("e12-e3-44-55-6-7-77--",1/8),
  ("e12-e3-44-56-5-7-77--",1/2),
  ("e12-e3-44-56-7-67-7--",1/2),
  ("e12-e3-45-45-6-7-77--",1/4),
  ("e12-e3-45-46-5-7-77--",1),
  ("e12-e3-45-46-7-67-7--",1),
  ("e12-e3-45-67-56-7-7--",1/2),
  ("e12-e3-45-67-66-77---",1/8),
  ("e12-e3-45-67-67-67---",1/4),
  ("e12-23-4-e5-56-7-77--",1),
  ("e12-23-4-e5-66-77-7--",1/2),
  ("e12-23-4-e5-67-67-7--",1),
  ("e12-23-4-45-6-e7-77--",1),
  ("e12-23-4-45-6-67-7-e-",1/2),
  ("e12-23-4-55-66-7-7-e-",1/4),
  ("e12-23-4-55-67-6-7-e-",1/2),
  ("e12-23-4-56-56-7-7-e-",1/2),
  ("e12-23-4-56-57-e-77--",1/2),
  ("e12-23-4-56-57-6-7-e-",2),
  ("e12-33-44-5-6-e7-77--",1/8),
  ("e12-33-45-4-6-e7-77--",1/4),
  ("e12-33-45-4-6-77-e7--",1/4),
  ("e12-33-45-6-e6-77-7--",1/2),
  ("e12-33-45-6-e7-67-7--",1),
  ("e12-33-45-6-56-7-7-e-",1),
  ("e12-33-45-6-57-7-e7--",1/4),
  ("e12-33-45-6-67-67--e-",1/2),
  ("e12-33-45-6-67-77-e--",1/4),
  ("e12-34-35-e-56-7-77--",1/4),
  ("e12-34-35-e-66-77-7--",1/8),
  ("e12-34-35-e-67-67-7--",1/4),
  ("e12-34-35-6-e5-7-77--",1),
  ("e12-34-35-6-e6-77-7--",1/2),
  ("e12-34-35-6-e7-67-7--",2),
  ("e12-34-35-6-56-7-7-e-",1),
  ("e12-34-35-6-57-7-e7--",1),
  ("e12-34-35-6-67-67--e-",1/2),
  ("e12-34-35-6-67-77-e--",1/2),
  ("e12-34-56-e5-67-7-7--",1),
  ("e12-34-56-e5-77-6-7--",1/2),
  ("e12-34-56-e7-56-7-7--",1/2),
  ("e12-34-56-45-7-6-7-e-",1/2),
  ("e12-34-56-56-57--7-e-",1/2)
  ]

phi3G3_4 = [
  ("e12-e3-e4-45-6-67-8-88--",3/2),
  ("e12-e3-e4-45-6-77-88-8--",3/4),
  ("e12-e3-e4-45-6-78-78-8--",3/2),
  ("e12-e3-e4-55-66-7-8-88--",3/8),
  ("e12-e3-e4-55-67-6-8-88--",3/2),
  ("e12-e3-e4-55-67-8-78-8--",3/2),
  ("e12-e3-e4-56-56-7-8-88--",3/4),
  ("e12-e3-e4-56-57-6-8-88--",3),
  ("e12-e3-e4-56-57-8-78-8--",3),
  ("e12-e3-e4-56-78-67-8-8--",3/2),
  ("e12-e3-e4-56-78-77-88---",3/8),
  ("e12-e3-e4-56-78-78-78---",3/4),
  ("e12-e3-34-5-e6-67-8-88--",3),
  ("e12-e3-34-5-e6-77-88-8--",3/2),
  ("e12-e3-34-5-e6-78-78-8--",3),
  ("e12-e3-34-5-56-7-e8-88--",3),
  ("e12-e3-34-5-56-7-78-8-e-",3),
  ("e12-e3-34-5-66-77-8-8-e-",3/4),
  ("e12-e3-34-5-66-78-7-8-e-",3),
  ("e12-e3-34-5-67-67-8-8-e-",3/2),
  ("e12-e3-34-5-67-68-e-88--",3/2),
  ("e12-e3-34-5-67-68-7-8-e-",6),
  ("e12-e3-44-55-6-7-e8-88--",3/4),
  ("e12-e3-44-55-6-7-78-8-e-",3/4),
  ("e12-e3-44-56-5-7-e8-88--",3/2),
  ("e12-e3-44-56-5-7-78-8-e-",3),
  ("e12-e3-44-56-5-7-88-e8--",3/2),
  ("e12-e3-44-56-7-e6-8-88--",3/2),
  ("e12-e3-44-56-7-e7-88-8--",3/2),
  ("e12-e3-44-56-7-e8-78-8--",3),
  ("e12-e3-44-56-7-67-8-8-e-",3),
  ("e12-e3-44-56-7-68-8-e8--",3/2),
  ("e12-e3-44-56-7-78-78--e-",3/2),
  ("e12-e3-44-56-7-78-88-e--",3/2),
  ("e12-e3-45-45-6-7-e8-88--",3/2),
  ("e12-e3-45-45-6-7-78-8-e-",3/2),
  ("e12-e3-45-46-e-67-8-88--",3/2),
  ("e12-e3-45-46-e-77-88-8--",3/4),
  ("e12-e3-45-46-e-78-78-8--",3/2),
  ("e12-e3-45-46-5-7-e8-88--",3),
  ("e12-e3-45-46-5-7-78-8-e-",6),
  ("e12-e3-45-46-5-7-88-e8--",3),
  ("e12-e3-45-46-7-e6-8-88--",3),
  ("e12-e3-45-46-7-e7-88-8--",3),
  ("e12-e3-45-46-7-e8-78-8--",6),
  ("e12-e3-45-46-7-67-8-8-e-",6),
  ("e12-e3-45-46-7-68-8-e8--",3),
  ("e12-e3-45-46-7-78-78--e-",3),
  ("e12-e3-45-46-7-78-88-e--",3),
  ("e12-e3-45-67-e5-6-8-88--",3),
  ("e12-e3-45-67-e5-8-78-8--",3),
  ("e12-e3-45-67-e6-68--88--",3),
  ("e12-e3-45-67-e6-78-8-8--",6),
  ("e12-e3-45-67-e6-88-7-8--",3),
  ("e12-e3-45-67-e8-66--88--",3/2),
  ("e12-e3-45-67-e8-67-8-8--",3),
  ("e12-e3-45-67-e8-68-7-8--",6),
  ("e12-e3-45-67-56-7-8-8-e-",3),
  ("e12-e3-45-67-56-8-7-8-e-",3),
  ("e12-e3-45-67-66-78--8-e-",3/2),
  ("e12-e3-45-67-67-68--8-e-",3),
  ("e12-23-4-e5-e6-67-8-88--",3/2),
  ("e12-23-4-e5-e6-77-88-8--",3/4),
  ("e12-23-4-e5-e6-78-78-8--",3/2),
  ("e12-23-4-e5-56-7-e8-88--",3),
  ("e12-23-4-e5-56-7-78-8-e-",6),
  ("e12-23-4-e5-56-7-88-e8--",3),
  ("e12-23-4-e5-66-77-8-8-e-",3/2),
  ("e12-23-4-e5-66-78-7-8-e-",3/2),
  ("e12-23-4-e5-67-67-8-8-e-",3),
  ("e12-23-4-e5-67-68-e-88--",3),
  ("e12-23-4-e5-67-68-7-8-e-",6),
  ("e12-23-4-e5-67-68-8-e8--",6),
  ("e12-23-4-e5-67-88-e7-8--",3),
  ("e12-23-4-45-6-e7-e8-88--",3/2),
  ("e12-23-4-45-6-78-78-e-e-",3/2),
  ("e12-23-4-55-67-8-e8-e8--",3/2),
  ("e12-23-4-56-57-e-e8-88--",3),
  ("e12-23-4-56-57-e-78-8-e-",3/2),
  ("e12-23-4-56-57-8-e7-8-e-",6),
  ("e12-23-4-56-57-8-e8-e8--",3),
  ("e12-23-4-56-78-e6-7-8-e-",1),
  ("e12-23-4-56-78-e7-e8-8--",3),
  ("e12-23-4-56-78-e7-78--e-",3),
  ("e12-33-44-5-6-e7-e8-88--",1/8),
  ("e12-33-44-5-6-78-78-e-e-",3/8),
  ("e12-33-45-4-6-e7-e8-88--",3/2),
  ("e12-33-45-4-6-78-78-e-e-",3/2),
  ("e12-33-45-6-e6-e7-8-88--",3/4),
  ("e12-33-45-6-e6-77-8-8-e-",3/4),
  ("e12-33-45-6-e7-e7-88-8--",3/4),
  ("e12-33-45-6-e7-e8-78-8--",3/2),
  ("e12-33-45-6-e7-67-8-8-e-",3),
  ("e12-33-45-6-e7-68-7-8-e-",3),
  ("e12-33-45-6-e7-78-e8-8--",3),
  ("e12-33-45-6-e7-78-78--e-",3),
  ("e12-33-45-6-e7-88-e7-8--",3/4),
  ("e12-33-45-6-57-8-78-e-e-",3/2),
  ("e12-33-45-6-67-78-8-e-e-",3),
  ("e12-33-45-6-78-78-e7--e-",3/4),
  ("e12-34-34-5-6-78-78-e-e-",3/4),
  ("e12-34-35-e-e6-67-8-88--",3/2),
  ("e12-34-35-e-e6-78-78-8--",3/2),
  ("e12-34-35-e-67-68-e-88--",3/4),
  ("e12-34-35-e-67-68-7-8-e-",3),
  ("e12-34-35-6-e7-e7-88-8--",3/2),
  ("e12-34-35-6-e7-e8-78-8--",3),
  ("e12-34-35-6-e7-67-8-8-e-",3),
  ("e12-34-35-6-e7-68-7-8-e-",3),
  ("e12-34-35-6-e7-78-e8-8--",6),
  ("e12-34-35-6-e7-78-78--e-",6),
  ("e12-34-35-6-e7-88-e7-8--",3),
  ("e12-34-35-6-57-8-78-e-e-",3),
  ("e12-34-35-6-67-78-8-e-e-",6),
  ("e12-34-35-6-78-78-e7--e-",3/2),
  ("e12-34-56-e5-e6-7-8-88--",3/2),
  ("e12-34-56-e5-e7-8-78-8--",3),
  ("e12-34-56-e5-67-8-e-88--",3/2),
  ("e12-34-56-e5-67-8-7-8-e-",6),
  ("e12-34-56-e7-e8-78-78---",1/2),
  ("e12-34-56-e7-56-7-8-8-e-",3),
  ("e12-34-56-e7-58-7-78--e-",3),
  ("e12-34-56-e7-58-8-e7-8--",1),
  ("e12-34-56-47-8-67-8-e-e-",1/2),
  ("e12-34-56-57-68-8-7-e-e-",1/2)
  ]
