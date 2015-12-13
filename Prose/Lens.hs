module Prose.Lens where

import Control.Lens
import Prose.Types
import Data.Text (Text)
import Data.Monoid
import qualified Prose as P
import qualified Data.Text as T
import qualified Data.Text.Lens as T

text :: Iso' Prose Text
text = iso unT T

string :: Iso' Prose String
string = text . T.unpacked

codes :: Iso' Prose [CodePoint]
codes = string

graphemes :: Iso' Prose [Grapheme]
graphemes = iso P.graphemes mconcat

chars :: Iso' Prose [Grapheme]
chars = graphemes

composed :: Iso' Prose Prose
composed = iso P.normC P.normD

-- composedK :: Iso' Prose Prose
-- composedK = iso P
