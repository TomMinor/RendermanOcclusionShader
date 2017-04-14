# Renderman Occlusion Shader

Before PRMan21 was released with a PxrDirt shader, there was no simple way to use occlusion in custom shader networks.
This is a minimal attempt to fill in that gap, it has been lightly tested while developing the shaders for an animation project but wasn't necessary in the end. However, you may still find some use for it! It was a valuable learning experience regardless.

![BFX Robot Test](images/bfx_robo.png)
![BFX Tank Test](images/bfx_tank.png)  
*PxrConstant example usage*

## Features
* Supplied with an args file ready to be used in Maya
* Ideal for masking layered materials
* Various adjustable parameters
    * Maximum Distance
    * Distance Scale
    * Primary/Secondary colour mixing for more exotic effects than a grayscale mask
    
![Layer Example](images/bfx_robo_layer.png)  
*Masking layers with PxrLm materials*
    
## Build
The bundled Makefile is currently Linux only, I need to port it to a cross platform build system to make it easier to build on Windows.

## Install
**ToDo**
* Set RMS_SHADER_PATH

## Thanks

[fundza](http://www.fundza.com/index_RIX.html) is an invaluable resource for anything Renderman related.
