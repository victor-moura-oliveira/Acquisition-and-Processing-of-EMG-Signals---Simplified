## Acquisition and Processing of EMG Signals (Simplified Project)

<div align="center">
<img src="https://user-images.githubusercontent.com/109448482/180022575-77dc869e-8378-4235-b4ba-c80af205d8de.png" width="800px" />
</div>
<div align="center">
<img src="https://user-images.githubusercontent.com/109448482/180022582-3d6d08d7-d466-4cd2-89fc-ac8a66167ace.png" width="800px" />
</div>

## **About this Project**
Hello everyone, in this project I sought to transform the analysis, processing and control of biomedical signals into a simple topic, proposing to work with tools that are easy to access and understand.

For acquisition I used a ready-made low cost circuit "M1NBY", but you can also use a homemade circuit with instrumentation amplifier using conventional electrodes.

To receive the signal I used an Arduino UNO, but you can easily use a microcontroller, the idea is the same.

Data were stored in a spreadsheet with the company's PARALLAX software (plx_daq).

The analysis and processing was done using the "matlab" software from the company mathworks. A very good software that makes it possible to import EMG signals allocated in archives ".xlsx" into the code in a simple way.

*OBS: If you want to use the system to control a robotic prosthesis or something like that, you just need the acquisition circuit and a microcontroller (or Arduino).*

## **Why**
The need to develop technology in order to help individuals who have certain difficulties in our society is extremely important. We spend several years of our lives absorbing knowledge both in the context in which we live and in the academic context, and the least that should be done in order to repay this long time of learning is to develop projects based on all academic experience, aiming to make the world that we live in a better place!

## **Some Observation about this Project**
I tried to use the simplest tools and methods to develop this work, but if you have any questions, please send me a message and I'll help you.

## **Installers**
[Excel](https://www.microsoft.com/pt-br/microsoft-365) (Microsoft Office)

[Plx_Daq](https://www.parallax.com/package/plx-daq/) (PARALLAX)

[Arduino IDE](https://www.arduino.cc/en/software)

[Matlab](https://www.mathworks.com/products/matlab.html) (student license)

## **Functionalities**
- Choose which muscle you want to analyze.
- Study the signals in detail (amplitude, frequency)
- Use this project to make a control system.

*be creative!*

## **Getting Started**
1. Install the software (Matlab, ArduinoIDE, Excel and Plx-Daq).
2. Connect your acquisition circuit to ArduinoUNO (or whatever version you want to use). In the code I made available in the project, I used Arduino's A0 port, but feel free to change it if you want.

The acquisition circuit is defined in three parts, input ("P2" electrodes), output (SIG and GND) and 9V source ("VS+, GND, VS-" Symmetric - obs: I used batteries to 
avoid noise).

3. Position the electrodes on the muscle you want to analyze (two acquisition electrodes and a reference electrode).

4. Write the code to the Arduino.

<div align="center">
<img src="https://user-images.githubusercontent.com/109448482/180044363-66831266-9b57-4400-a64f-1f755c124622.jpg"  width="500px" />
</div>

<div align="center">
<img src="https://user-images.githubusercontent.com/109448482/180051753-4b591b2b-d700-44e7-b2a5-a60276e74b58.png"  width="500px" />
</div>

<div align="center">
<img src="https://user-images.githubusercontent.com/109448482/180051139-3b6f23d7-6e93-44a2-9df8-a27dbc363df0.PNG"  width="500px" />
</div>
                                                                                                                             
