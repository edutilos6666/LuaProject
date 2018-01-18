## Tools , that were used
<ol>
<li>lua version : Lua 5.3.4  Copyright (C) 1994-2017 Lua.org, PUC-Rio</li>
<li>atom ide with lua plugins installed </li>
</ol>

### How to run lua file
#### Method 1 (with lua):
<pre>
 Suppose we have HelloWorld.lua

 //cat HelloWorld.lua
 print("Hello World")
 //now interpret file with lua
 lua HelloWorld.lua
</pre>

#### Method 2 (with luac and lua):
<pre>
//firstly compile .lua file to luac.out
luac HelloWorld.lua
//now run .out file with lua
lua luac.out
</pre>
