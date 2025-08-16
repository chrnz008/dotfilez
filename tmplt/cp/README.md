- make sure to have a precompiled binary file in the dir so the  `#include<bits/stdc++.h>` doesnt recompile every time making the compilations speed faster
- to do that open the template.cpp (as pch.cpp)in the dir and compile it with _pch for precompiled header_
`g++ -std=c++17 -o pch.gch -c pch.cpp` 
