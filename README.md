### What is OTX Server 2 Series
We are trying to create the perfect custom open tibia server.

### How Compile:
[Windows Tutorial](https://github.com/mattyx14/otxserver/wiki/Compilling-on-Windows) - [Linux(Ubuntu) Tutorial](https://github.com/mattyx14/otxserver/wiki/Compiling-OTX2-on-Ubuntu)

- Install-Package 
boost

- Include package manually
project/properties/C_C++/General/Additional include Direcotories/...
mysql-connector-c/include
lua/include
mpir/include
libxml2/include
libiconv/include


- Link lib file manually
project/properties/Linker/General/Additional Library Directories/... 
lua/lib
mpir/lib
sqlite3/lib
libiconv/lib
mysql-connector-c/lib
openssl/lib
libxml2/lib

libboost_thread-vc143-mt-x32-1_84.lib  ??
change build option according to boost configration x64

change config.lua file
input "sqldatabasename"

create mysql database
import "schemas/mysql.sql" file to database