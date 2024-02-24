# tnl2jpg
Converts Super Mario Maker thumbnail files `.tnl` to `.jpg`.

## Usage
1. Download the `tnl2jpg` binary.
2. Open your favourite terminal (`cmd`, `powershell`, `bash`, etc)
3. Navigate to the directory that has your `tnl2jpg` program.
4. Run the program with one input argument, the path to the .tnl file.
5. `output.jpg` is created in your current directory. Note: Running again will
overwrite `output.jpg` so move it or rename it.

## Example
Let's assume the program is downloaded to some `.../Programs/tnl2jpg/`
directory.
```bash
~> cd Programs/tnl2jpg/
~/Programs/tnl2jpg/> ./tnl2jpg myfavouritethumbnail.tnl
```

## Compilation
Vanilla GHC 8.0.2 has been used to compile the attached x64 binary.
If you want to recompile it yourself, `ghc tnl2jpg.hs` should do the trick.

## Credits
Inspired by [RoadrunnerWMC's `tnl_conv.py` script](https://gist.github.com/RoadrunnerWMC/33c28d6d13b411f1e55471936d36c990)
that does something similar.
