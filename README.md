# Sort
I implement a Sort machine using verilog. The input includes clock, reset, start and data, while the output includes address of the data read, address of the data written, write enable, data and finish. I use four states to process this program: IDEL, READ, WRITE and RE.

![state_graph2](https://user-images.githubusercontent.com/41135423/42986149-1541fbce-8c27-11e8-9812-868b37fb162b.jpg)

In the IDEL state, the mission is nothing but to initialize all the variables. In the READ state, the machine reads the data and determines wether to change the order of these two numbwes. In the WRITE state, the machine writes back the operated data to the RAM. In the RE state, the machine comfirms all the variables are initialized.

![block_diagram_bonus](https://user-images.githubusercontent.com/41135423/42986148-1517cb9c-8c27-11e8-94da-357bfc08656a.jpg)

Note: You can ignore the RE state, if you initialize these variables in the WRITE state. The reason is that there is no thread in this step.
