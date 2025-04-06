# Digital Electronics - The Multiplixer 8-to-3 SN74LS148N (Simulation)
## About
<p>This project was built along with the Laboratory Digital Electronics at the Technical University of Applied Sciences of Regensburg (OTH Regensburg), Bavaria, Germany. The simulation of the Multiplexer 8-to-3 SN74LS148N with AMD Vivado is the focus of the project.</p>

## The logic-IC - SN74LS148N
<p>The SN74LS148N is an 8-to-3 priority encoder integrated circuit from Texas Instruments. It takes 8 active-low input signals (0 – 7) and converts them into a 3-bit binary code on the outputs (A2 - A0). The highest-priority active input determines the output. It also includes control signals like Enable Input (EI), Group Select (GS), and Enable Output (EO) for cascading and system control.</p>
<p>It's commonly used in digital systems to reduce multiple input lines into a smaller number of output lines, especially when prioritization is needed.</p>

<div align="center">
  <img src="https://github.com/user-attachments/assets/0c7c55da-826b-422e-a106-05125623cf91"/><sub>(1)</sub>
</div>
<br>

<article>
  For this simulation I used the following inputs and outputs:
  <ul>
  <li><b>The inputs:</b></li>
    <ul>
      <li>8-bits vector (7, 6, 5, 4, 3, 2, 1, 0) with the pins (pin 4, pin 3, pin 2, pin 1, pin 13, pin 12, pin 11, pin 10)
      <li>1-bit vector (E1) with the pin 5
    </ul>
  <br>
  <li><b>The outputs:</b></li>
    <ul>
      <li>3-bits vector (A2, A1, A0) with the pins (pin 6, pin 7, pin 9)
      <li>1-bit vector (E0) with the pin 15
      <li>1-bit vector (GS) with the pin 14
    </ul>
  </ul>
</article>

<br>
<p>Here’s a truth table summarizing the operation of the IC SN74LS148N:</p>
<div align="center">
  <img src="https://github.com/user-attachments/assets/567329f9-413a-4469-9a12-b0092110c7cd"  width="850"/><sub>(2)</sub>
</div>

## Simulation
<p>After creating a testbench for this project, you can see how the highest-priority active input determines the output.</p>
<article>
  <p>For example when the inputs [7 (MSB) .. 0 (LSB)] (in the simulation I_Signal[7:0]) equals [X, X, X, X, X, 0, 1, 1], the outputs [A2 (MSB) .. A0 (LSB)] (in the simulation O_Signal[2:0]) have the value [0, 1, 0].</p>
  <p>In this example the I_Signal vector has the 2nd bit as the highest active input, what obligates that the output should have the value 2<sub>(10)</sub> or 010<sub>(2)</sub>.</p>
</article>
<div align="center">
  <img src="https://github.com/user-attachments/assets/0ac5f6ba-7200-4029-9370-3f751ba16874"/>
</div>









###### <p>Sources:<br>(1)(2): https://www.alldatasheet.com/datasheet-pdf/pdf/27383/TI/SN74LS148N.html</p>
