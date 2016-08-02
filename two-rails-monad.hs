module MyRequest where
import Control.Monad
import Control.Applicative
import Control.Monad (liftM, ap)

data Flow a = Success a | Failure String deriving Show

instance Monad Flow where
  (Success a) >>= f = f a
  Failure a >>= f = Failure a
  return a = Success a
  fail msg = Failure msg

validRequest = Success "some http request /products"
hackerattack = Success "hacker"
blankrequest = Success ""

flow mrequest = do
  content <- mrequest
  params <-  parsecontent content
  validate params
  response <- findProducts params
  return response

parsecontent content = (return . words) content

validate params =
  case params of
    [] -> fail "request is blank"
    ["hacker"] -> fail "Oh Lord! It is an Attack!!!!"
    params -> return params

findProducts params = do
  -- getDBconnection
  let result = fromRepository params
  return result

fromRepository params = do
  if elem "/products" params
     then successResponse
     else attackResponse

getDBconnection = Failure "Oh Lord! Database connection timeout!!!"

successResponse = ["Hosting", "EmailMkt", "Site Creator", "Cloud", "SMTP", "..."]
attackResponse = ["password: 84848884444", "creditcard: 222"]









instance Functor Flow where
    fmap = liftM

instance Applicative Flow where
    pure  = return
    (<*>) = ap


