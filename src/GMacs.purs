module GMacs where

import Prelude
import Effect (Effect)
import GJS (log)

type Env = Unit

create :: Effect Env
create = pure unit

init :: Env -> Effect Unit
init env = do
  log "init called"

-- | Enable the extension
enable :: Env -> Effect Unit
enable env = do
  log "enable called"

-- | Disable the extension
disable :: Env -> Effect Unit
disable env = do
  log "disable called"

main :: Effect Unit
main = pure unit
