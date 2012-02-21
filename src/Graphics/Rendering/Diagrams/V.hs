{-# LANGUAGE TypeFamilies #-}

-----------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.Diagrams.MList
-- Copyright   :  (c) 2011 diagrams-core team (see LICENSE)
-- License     :  BSD-style (see LICENSE)
-- Maintainer  :  diagrams-discuss@googlegroups.com
--
-- Type family for identifying associated vector spaces.
--
-----------------------------------------------------------------------------

module Graphics.Rendering.Diagrams.V
       ( V

       ) where

import Data.Set
import Data.Map

------------------------------------------------------------
-- Vector spaces -------------------------------------------
------------------------------------------------------------

-- | Many sorts of objects have an associated vector space in which
--   they live.  The type function @V@ maps from objects to their
--   associated vector space.
type family V a :: *

type instance V Double    = Double
type instance V Rational  = Rational

-- Note, to use these instances one often needs a constraint of the form
--   V a ~ V b, etc.
type instance V (a,b)     = V a
type instance V (a,b,c)   = V a

type instance V (a -> b)  = V b
type instance V [a]       = V a
type instance V (Set a)   = V a
type instance V (Map k a) = V a
