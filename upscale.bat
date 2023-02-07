@echo off
rem make sure you can use Real-ESRGAN in SD webui
echo set parameters
set RESRGAN_scale=4
set RESRGAN_input=outputs/txt2img-images
set RESRGAN_output=outputs/RealESRGAN
set RESRGAN_model_name=RealESRGAN_x4plus
set RESRGAN_model_path=models/RealESRGAN/RealESRGAN_x4plus.pth
rem to use fp32, set RESRGAN_fp=--fp32
rem to use half precision, set RESRGAN_fp to empty
set RESRGAN_fp=
echo activate venv
call .\venv\Scripts\activate
echo run Real-ESRGAN with:
echo.
echo scale=%RESRGAN_scale%
echo input=%RESRGAN_input%
echo output=%RESRGAN_output%
echo model_name=%RESRGAN_model_name%
echo model_path=%RESRGAN_model_path%
echo fp=%RESRGAN_fp%
echo.
echo start:
echo python upscale.py -n %RESRGAN_model_name% --model_path %RESRGAN_model_path% -i %RESRGAN_input% -o %RESRGAN_output% -s %RESRGAN_scale% %RESRGAN_fp%
python upscale.py -n %RESRGAN_model_name% --model_path %RESRGAN_model_path% -i %RESRGAN_input% -o %RESRGAN_output% -s %RESRGAN_scale% %RESRGAN_fp%
echo end
