-- |
-- Module      :  Asterius.Internals.MagicNumber
-- Copyright   :  (c) 2018 EURL Tweag
-- License     :  All rights reserved (see LICENCE file in the distribution).
--
-- Addresses and tags used internally by Asterius.
--
-- Asterius uses a 64-bit virtual address space: the higher 32 bits indicate
-- whether we are dealing with a data or a function address, while the lower 32
-- bits contain the actual address in the linear memory.
module Asterius.Internals.MagicNumber
  ( dataTag,
    functionTag,
    invalidAddress,
  )
where

import Data.Int

-- | Tag for addresses in the data segment.
dataTag :: Int64
dataTag = 0x00000000001ffff7 -- 2097143

-- | Tag for addresses in the function segment.
functionTag :: Int64
functionTag = 0x00000000001fffed -- 2097133

-- | The invalid address. Used for example in the backends, when marshaling
-- truly unresolved symbols.
invalidAddress :: Int64
invalidAddress = 0x001fffffffff0000
