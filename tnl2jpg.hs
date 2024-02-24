{-
tnl2jpg - Converts the Super Mario Maker .tnl format to jpg.

(C) 2024, Gwaerondor @ github
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>. 
-}
import System.Environment
import System.Exit
import System.IO
import Data.Word
import qualified Data.ByteString as B

main = getArgs >>= getFilename >>= readFileAsJpg >>= writeJpg "output.jpg"

getFilename [ filename ] = return filename
getFilename _ = printUsage >> exitWith (ExitFailure 1)

readFileAsJpg :: String -> IO [Word8]
readFileAsJpg filename = do
  handle <- openBinaryFile filename ReadMode
  -- tnl is a jpg with 8 unnecessary bytes at the start.
  drop 8 <$> B.unpack <$> B.hGetContents handle

writeJpg :: String -> [Word8] -> IO ()
writeJpg filename contents = do
   handle <- openBinaryFile filename WriteMode
   B.hPut handle $ B.pack contents
   hClose handle

printUsage = putStrLn "Usage: tnl2jpg <filename>"
