module Numeric.Order.Positive
  ( PositiveOrder
  ) where

import Numeric.Order.Additive
import Numeric.Natural
import Numeric.Additive.Class
import Numeric.Order.Class

-- A positive, additive semigroup over a partial order (<=)

-- | x <= x + y = y <= x + y
class (PositiveOrder r) => PositiveOrder r

instance PositiveOrder Natural -- using @(+)@
instance PositiveOrder Bool    -- using @||@
instance PositiveOrder ()
instance (PositiveOrder a, PositiveOrder b) => PositiveOrder (a,b)
instance (PositiveOrder a, PositiveOrder b, PositiveOrder c) => PositiveOrder (a,b,c)
instance (PositiveOrder a, PositiveOrder b, PositiveOrder c, PositiveOrder d) => PositiveOrder (a,b,c,d)
instance (PositiveOrder a, PositiveOrder b, PositiveOrder c, PositiveOrder d, PositiveOrder e) => PositiveOrder (a,b,c,d,e)
