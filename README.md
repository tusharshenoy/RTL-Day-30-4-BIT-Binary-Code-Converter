# RTL-Day-30-4-BIT-Binary-Code-Converter
## Problem Statement: Implementing 4 BIT Code converter in Structural Style.
### Theory:

A 4-bit binary code converter is a circuit that can convert a 4-bit binary code represent from one form to another. 
The excess-3 code (or XS3) is a non-weighted code used to express code used to express decimal numbers. It is a self-complementary binary coded decimal (BCD) code. Excess-3 codes are unweighted and can be obtained by adding 3 to each decimal digit then it can be represented by using 4 bit binary number for each digit. 
BCD code or Binary coded Decimal codes. It is a numeric weighted binary codes, where every digit of a decimal number is expressed by a separate group of 4-bits. There are various BCD codes like 8421, 2421, 5211, etc. The BCD code is also known as the 8421 code.

Gray code is a non-weighted code. The successive gray code differs in one bit position only that means it is a unit distance code. It is also referred as cyclic code. It is not suitable for arithmetic operations. It is the most popular of the unit distance codes. It is also a reflective code.  
Binary code in electronics refers to the representation of data and information using only two digits, 0 and 1. In digital electronics, binary codes are used to store, process and transmit information in computers and other digital devices. The binary system uses only two digits, 0 and 1, to represent all types of data, including numbers, letters, and special characters. The binary code is converted into electrical signals that can be processed and manipulated by electronic circuits. The binary system is a fundamental concept in digital electronics and forms the basis of modern computing. 

Binary to Gray code conversion: The Binary to Gray code conversion involves converting a binary number into a gray code number. The gray code is a non-weighted code where only one bit changes between consecutive values. The conversion is performed by XORing the binary number with its right shift by 1 position.
BCD to Excess-3 conversion: BCD to Excess-3 conversion involves converting a BCD number into an Excess-3 number. In the Excess-3 code, the decimal equivalent of each code is 3 more than the BCD code. For example, if the BCD code is 1001, its Excess-3 code will be 1100.
Gray code to Binary conversion: The Gray code to Binary conversion involves converting a gray code number into its equivalent binary number. The conversion in general is performed by starting with the least significant bit (LSB) and XORing it with the previous bit. This process is repeated for each bit, starting from the LSB, to get the equivalent binary number. 
Excess-3 to BCD conversion: The Excess-3 to BCD conversion involves converting an Excess-3 code into its equivalent BCD code. The conversion in general is performed by subtracting 3 from each digit in the Excess-3 code. For example, if the Excess-3 code is 0100, its BCD code will be 0001. 

### DESIGN AND IMPLEMENTATION 
A 4-bit binary code converter can be designed and implemented using different techniques such as hardware circuitry or software algorithms. 
The Circuit is designed using multiplexer (MUX) and de-multiplexer (DEMUX) along with Logic gates like OR, AND, NOT and XOR. 
NOTE: The outputs are shorted through a Diode, in Verilog code I have considered different Outputs as shorting them was causing an Issue.

CIRCUIT DIAGRAM / BLOCK DIAGRAM 
![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/26e30eb5-7c20-4ddc-8786-a2c21d7e3a7a)
#### Fig: Block diagram of the Code Converter Circuit 



![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/a9d362d7-42eb-4fad-938c-1be3658b5d89)
#### Fig: De-multiplexer Circuit
 

 ![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/0189fb04-df32-46c4-bdb3-ad258cfe20e3)
#### Fig: Binary to Gray code conversion Circuit


 ![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/b9ca74cf-16c4-4d63-8957-8f629e61eb89)
#### Fig: BCD to Excess-3 code conversion Circuit



![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/56b73271-e873-42d3-94aa-7c3b7b7466a1)
#### Fig:Gray code to Binary conversion Circuit


![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/ffaa94f1-c477-4720-b9dc-639313fc118f)
#### Fig: Excess-3 code to BCD conversion Circuit


![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/974c5ec0-9dfc-485b-8b92-88844c6a8f8f)
#### Fig: Logic Diagram using Circuitverse 



### ICs Specifications 
1) IC 74153 (Dual 4-input multiplexer) 
The multiplexer, shortened to “MUX” is a combinational logic circuit designed to switch one of several input lines through to a single common output line by the application of a control signal. IC 74153 is a multiplexer IC (Integrated Circuit) that allows the user to select one of four inputs and send it to the output. It has four data inputs (A0, A1, A2, A3), a selection input (S1, S0) to choose one of the four inputs, and an output (Y).
  
 ![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/0f617561-0977-4f7a-93f6-b146ae3938a3)
#### Fig: Pin Diagram of IC 74153
 
2)  IC 74139 (Dual 2-to-4 line Decoder) 
IC 74139 is a dual 2-to-4 line decoder/de-multiplexer integrated circuit. It has two inputs (A, B), two selection inputs (S1, S0), and four outputs (Y0, Y1, Y2, Y3). The device is used to convert two binary inputs into four outputs, where only one output is active at a time based on the selection inputs.

![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/fbca5046-8694-4c31-9c38-fa5f2d28e91f)
#### Fig: Pin Diagram of IC 74139

3) IC 7432 (Quad OR Gate)   
IC 7432 is a logic gate IC which consist of four OR Gates. The OR gate performs logical OR operation. The OR gates come in form of DIP package ICs. Each gate has three terminal two inputs and one output. The OR gate outputs a high (1) signal if one or both of its inputs are high (1), and outputs a low (0) signal if both inputs are low (0). The inputs of the OR gate are labeled A and B, and the output is labeled Y.

![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/e3ae85d3-0f13-4c9c-8501-9c7358175aa1)
Fig: Pin Diagram of IC 7432

4) IC 7486 (Quad XOR Gate)  
The IC 7486 is a quad 2-input XOR gate integrated circuit. It consists of four independent gates, each of which performs the logical exclusive OR (XOR) function. The XOR gate outputs a high (1) signal if one, but not both, of its inputs are high (1), and outputs a low (0) signal if both inputs are either high (1) or low (0). The inputs of the XOR gate are labeled A and B, and the output is labeled Y.
          
![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/515bf58b-4be3-44d6-af11-70f5babc2129)
#### Fig: Pin Diagram of IC 7486



5)  IC 7408 (Quad 2 input AND gate)         
The IC 7408 is a quad 2-input AND gate integrated circuit. It consists of four independent gates, each of which performs the logical AND function. The AND gate outputs a high (1) signal if both of its inputs are high (1), and outputs a low (0) signal if one or both inputs are low (0). The inputs of the AND gate are labeled A and B, and the output is labeled Y. 

![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/3d3c8667-9c0b-43bf-b154-c3bd56a6f678)
#### Fig: Pin Diagram of IC 7408

6)  IC 7404 (Hex Inverter)                        
The IC 7404 is a hex inverter integrated circuit. It contains six independent inverter gates, each of which performs the logical NOT function. The NOT function, also known as inversion, outputs a low (0) signal if its input is high (1), and outputs a high (1) signal if its input is low (0). The input of the inverter gate is labeled A, and the output is labeled Y. 

![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/46dff45f-0a11-478a-b8ed-747a52b3950a)
#### Fig: Pin Diagram of IC 7404




### Truth Table

![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/ece54a2d-fc6a-4935-9e27-31bb20a71713)
#### Table: Binary to Gray Code
  
![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/44534c95-2bfb-47e2-aaaa-f341e8ab85c5)
#### Table: BCD to Excess-3  
  
![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/b498d194-000f-4668-82bf-b0da1ee4f5f5)
#### Table: Gray Code to Binary
  
![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/9befcfe1-e6c7-49e9-94be-198959c5c32a)
#### Table: Excess-3 to BCD
  
 

![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/2da5ad2d-d7a4-41b2-859a-822f1b62b639)
#### Code Conversion Table


### WORKING 
The 4-bit binary code converter Circuit using Demultiplexer (DEMUX) and Multiplexer (MUX) works as follows: 
•	Initially the DEMUX is used to select a Particular Conversion, the output of the DEMUX is applied to the enable of the MUX. The DEMUX is used to select a particular binary conversion out of 4 different conversion. The selection lines of the DEMUX determine the Conversion which has to be performed. 
•	The inputs A, B, C, D is given once after selecting the conversion which is needed to be performed. 
•	The logic Gates Like OR, NOT, AND, XOR are Used to Perform Operations on inputs C and D and the outputs of the Logic Gates is then applied to the inputs of the MUX. 
•	The MUX is used to map the Logic gates input to output and the conversion to gray code or Excess-3 code or binary is performed. The selection lines of the MUX that is A and B determine the mapping of the binary code to the gray code or Excess-3 code. 
•	The outputs of the MUX represent the converted code in the desired format. 
•	The Converted output is displayed on the 7 Segment displays along with the LEDs. 

### Schematic: 

![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/f9f64125-a754-4218-a6a8-223edea83746)
FIG:4 Bit Binary Code Converter


#### FIG: ICs
![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/f8c09dc5-eda3-47e5-b26e-9db0df8bc9d3)
![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/e7456cbd-b9ed-4d36-8d51-86638b22ab3a)   
![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/cfbdaade-7a2e-49bf-9f81-7e51cc744650)
![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/d3c9acd6-33d2-48d4-aedc-e9061968dca2)


 
#### FIG: IC 74139
![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/226b0163-72e9-449d-8308-29a86837e9ad)

 
#### FIG: IC 74153
![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/7a38fdaa-b3f9-4553-89e4-15dddc432c08)


### Simulation Output: 
1)	Binary to Gray Code Conversion (o0)
 ![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/ebbbb7e7-fd80-4e66-a710-6f3e28a5afa7)

2)	BCD to Excess-3 Conversion (o1)
 ![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/7136e7c3-339e-4a3d-bd94-d5cd25dd8bd5)

3)	Gray Code to Binary Conversion (o2)
![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/af3debcc-c8c9-4f89-a429-cd9e3d9aa58c)
 
4)	Excess-3 to BCD Conversion (o3)
 ![image](https://github.com/tusharshenoy/RTL-Day-30-4-BIT-Binary-Code-Converter/assets/107348474/62037f94-6663-4b7d-b07a-4e7b1ab1f7f6)

