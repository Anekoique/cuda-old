# tensorRT

learn and refer from:

https://deployment.gitbook.io/love

https://github.com/kalfazed/tensorrt_starter

# Errors

## nvcc

```
$ nvcc src_name.cu -o exe_name
gcc: fatal error: cannot execute ‘cc1plus’: execvp: 没有那个文件或目录
compilation terminated
```

```shell
// gcc 12.4 g++ 11.4版本冲突
gcc -v
g++ -v
ll /usr/bin/gcc*
ll /usr/bin/g++*
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 100
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 50
sudo update-alternatives --config gcc
```
## CMake

```
undefined references to 'cudaGetDevice()'...
```
```shell
# 编译 .cpp文件用gcc编译需要明确链接CUDA库
# error：
add_executable(MyExecutable ./src/main.cpp ./src/utils.cpp)
# successful: (test.cu isn't used)
add_executable(MyExecutable ./src/main.cpp ./src/utils.cpp ./src/test.cu)
# successful: (transform main.cpp to main.cu)
add_executable(MyExecutable ./src/main.cu ./src/utils.cpp)
# successful: (add target_link_libraries)
add_executable(MyExecutable ./src/main.cpp ./src/utils.cpp)
target_link_libraries(MyExecutable libcudart.so)
```

![image-20240727003103094](/home/stoair/.config/Typora/typora-user-images/image-20240727003103094.png)
- CMake:
```makefile
# include_directories（）的影响范围最大，可以为CMakelists.txt后的所有项目添加头文件目录
一般写在最外层CMakelists.txt中影响全局
include_directories()
```
```makefile
# target_include_directories(<target> [SYSTEM] [AFTER|BEFORE] <INTERFACE|PUBLIC|PRIVATE> [items1...] [<INTERFACE|PUBLIC|PRIVATE> [items2...] ...])
# INTERFACE、PUBLIC和PRIVATE关键字用于（指定target_include_directories的影响范围）
target_include_directories()
```
```makefile
# add_library() 两种格式 , 生成（静态/动态）库so或者.a文件
# 1：生成一个名为 < name > 的library
# add_library(<name> [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL] [<source>...]
# STATIC库：生成obj文件后，将其链接成静态库，用于链接到其他targets。
# SHARED库：生成obj文件后，将其链接成动态库，用于运行时加载。
# MODULE库：不能链接到其他targets，但是可以用dlopen之类的方法在运行时动态加载。
# 如果没有明确指定要生成的library的类型到底是STATIC,SHARED还是MODULE。则查看BUILD_SHARED_LIBS变量，如果值为ON，则默认是SHARED，否则默认STATIC。
add_library(hello hello.cpp)
add_executable(Demo main.cpp)
target_link_libraries(Demo hello)

# 2: 生成一个obj文件对象，该对象库只编译源文件，但不链接。
# add_library(<name> OBJECT [<source>...])
# 2.1
add_library(hello OBJECT hello.cpp)
add_executable(Demo main.cpp $<TARGET_OBJECTS:hello>)
# 2.2
add_library(hello OBJECT hello.cpp)
add_executable(Demo main.cpp)
target_link_libraries(Demo hello)
```

```makefile
link_directories()
```
```makefile
target_link_libraries()
```

