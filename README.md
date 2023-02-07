# Stable Diffusion Webui Real-ESRGAN .bat
In Stable Diffusion Webui, when running Hires.fix with multiple images, we often get a "CUDA out of memory" error.
That's because the Stable Diffusion is still in your VRAM, so not much left for Hires.fix's Upscalers' AI. 

**With this project's .bat file, you can run Upscaler without launch Stable Diffusion webui. So you can batch upscale a whole folder's images at once, and with sizex4 as default, without any CUDA memory issue.**

# How to use
 **(Windows only)**
* It uses the Real-ESRGAN installed in your Stable Diffusion Webui folder. So, make sure you can use `R-ESRGAN-x4plus` as a upscaler in Stable Diffusion Webui.
* Download this project's: `upscale.bat` and `upscale.py` files.
* Put them in to your Stable Diffusion Webui folder, **NOT** in any subfolder.
* Make sure you have python in your environment.
* Run `upscale.bat`, done.

# Options
By default, it takes all images from `outputs/txt2img-images`, upscales them, then put them into `outputs/RealESRGAN` folder.
You can set everything by edit `upscale.bat` file, as following:
```
scale=4
input=outputs/txt2img-images
output=outputs/RealESRGAN
model_name=RealESRGAN_x4plus
model_path=models/RealESRGAN/RealESRGAN_x4plus.pth

to use fp32, set RESRGAN_fp=--fp32
to not use half precision, set RESRGAN_fp to empty
RESRGAN_fp=
```
----

Reference:
https://github.com/xinntao/Real-ESRGAN
