# Sort
I implement a Sort machine using verilog. The input includes clock, reset, start and data, while the output includes address of the data read, address of the data written, write enable, data and finish. I use four states to process this program: IDEL, READ, WRITE and RE.

In the IDEL state, the mission is nothing but to initialize all the variables. In the READ state, the machine reads the data and determines wether to change the order of these two numbwes. In the WRITE state, the machine writes back the operated data to the RAM. In the RE state, the machine comfirms all the variables are initialized.

Note: You can ignore the RE state, if you initialize these variables in the WRITE state. The reason is that there is no thread in this step.
