/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Sat Jun  2 10:24:00 2018
/////////////////////////////////////////////////////////////


module Bubble_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module Bubble_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   \carry[31] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76;

  XOR3X1 U2_31 ( .A(A[31]), .B(n16), .C(\carry[31] ), .Y(DIFF[31]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n15) );
  CLKINVX1 U2 ( .A(A[3]), .Y(n14) );
  CLKINVX1 U3 ( .A(A[5]), .Y(n13) );
  CLKINVX1 U4 ( .A(A[7]), .Y(n12) );
  CLKINVX1 U5 ( .A(A[9]), .Y(n11) );
  CLKINVX1 U6 ( .A(A[11]), .Y(n10) );
  CLKINVX1 U7 ( .A(A[13]), .Y(n9) );
  CLKINVX1 U8 ( .A(A[15]), .Y(n8) );
  CLKINVX1 U9 ( .A(A[17]), .Y(n7) );
  CLKINVX1 U10 ( .A(A[19]), .Y(n6) );
  CLKINVX1 U11 ( .A(A[21]), .Y(n5) );
  CLKINVX1 U12 ( .A(A[23]), .Y(n4) );
  CLKINVX1 U13 ( .A(A[25]), .Y(n3) );
  CLKINVX1 U14 ( .A(A[27]), .Y(n2) );
  CLKINVX1 U15 ( .A(A[29]), .Y(n1) );
  CLKINVX1 U16 ( .A(B[31]), .Y(n16) );
  OAI2BB2XL U17 ( .B0(B[30]), .B1(n17), .A0N(n18), .A1N(A[30]), .Y(\carry[31] ) );
  NOR2X1 U18 ( .A(A[30]), .B(n18), .Y(n17) );
  OAI22XL U19 ( .A0(n19), .A1(n1), .B0(B[29]), .B1(n20), .Y(n18) );
  AND2X1 U20 ( .A(n19), .B(n1), .Y(n20) );
  AOI2BB2X1 U21 ( .B0(n21), .B1(A[28]), .A0N(B[28]), .A1N(n22), .Y(n19) );
  NOR2X1 U22 ( .A(A[28]), .B(n21), .Y(n22) );
  OAI22XL U23 ( .A0(n23), .A1(n2), .B0(B[27]), .B1(n24), .Y(n21) );
  AND2X1 U24 ( .A(n23), .B(n2), .Y(n24) );
  AOI2BB2X1 U25 ( .B0(n25), .B1(A[26]), .A0N(B[26]), .A1N(n26), .Y(n23) );
  NOR2X1 U26 ( .A(A[26]), .B(n25), .Y(n26) );
  OAI22XL U27 ( .A0(n27), .A1(n3), .B0(B[25]), .B1(n28), .Y(n25) );
  AND2X1 U28 ( .A(n27), .B(n3), .Y(n28) );
  AOI2BB2X1 U29 ( .B0(n29), .B1(A[24]), .A0N(B[24]), .A1N(n30), .Y(n27) );
  NOR2X1 U30 ( .A(A[24]), .B(n29), .Y(n30) );
  OAI22XL U31 ( .A0(n31), .A1(n4), .B0(B[23]), .B1(n32), .Y(n29) );
  AND2X1 U32 ( .A(n31), .B(n4), .Y(n32) );
  AOI2BB2X1 U33 ( .B0(n33), .B1(A[22]), .A0N(B[22]), .A1N(n34), .Y(n31) );
  NOR2X1 U34 ( .A(A[22]), .B(n33), .Y(n34) );
  OAI22XL U35 ( .A0(n35), .A1(n5), .B0(B[21]), .B1(n36), .Y(n33) );
  AND2X1 U36 ( .A(n35), .B(n5), .Y(n36) );
  AOI2BB2X1 U37 ( .B0(n37), .B1(A[20]), .A0N(B[20]), .A1N(n38), .Y(n35) );
  NOR2X1 U38 ( .A(A[20]), .B(n37), .Y(n38) );
  OAI22XL U39 ( .A0(n39), .A1(n6), .B0(B[19]), .B1(n40), .Y(n37) );
  AND2X1 U40 ( .A(n39), .B(n6), .Y(n40) );
  AOI2BB2X1 U41 ( .B0(n41), .B1(A[18]), .A0N(B[18]), .A1N(n42), .Y(n39) );
  NOR2X1 U42 ( .A(A[18]), .B(n41), .Y(n42) );
  OAI22XL U43 ( .A0(n43), .A1(n7), .B0(B[17]), .B1(n44), .Y(n41) );
  AND2X1 U44 ( .A(n43), .B(n7), .Y(n44) );
  AOI2BB2X1 U45 ( .B0(n45), .B1(A[16]), .A0N(B[16]), .A1N(n46), .Y(n43) );
  NOR2X1 U46 ( .A(A[16]), .B(n45), .Y(n46) );
  OAI22XL U47 ( .A0(n47), .A1(n8), .B0(B[15]), .B1(n48), .Y(n45) );
  AND2X1 U48 ( .A(n47), .B(n8), .Y(n48) );
  AOI2BB2X1 U49 ( .B0(n49), .B1(A[14]), .A0N(B[14]), .A1N(n50), .Y(n47) );
  NOR2X1 U50 ( .A(A[14]), .B(n49), .Y(n50) );
  OAI22XL U51 ( .A0(n51), .A1(n9), .B0(B[13]), .B1(n52), .Y(n49) );
  AND2X1 U52 ( .A(n51), .B(n9), .Y(n52) );
  AOI2BB2X1 U53 ( .B0(n53), .B1(A[12]), .A0N(B[12]), .A1N(n54), .Y(n51) );
  NOR2X1 U54 ( .A(A[12]), .B(n53), .Y(n54) );
  OAI22XL U55 ( .A0(n55), .A1(n10), .B0(B[11]), .B1(n56), .Y(n53) );
  AND2X1 U56 ( .A(n55), .B(n10), .Y(n56) );
  AOI2BB2X1 U57 ( .B0(n57), .B1(A[10]), .A0N(B[10]), .A1N(n58), .Y(n55) );
  NOR2X1 U58 ( .A(A[10]), .B(n57), .Y(n58) );
  OAI22XL U59 ( .A0(n59), .A1(n11), .B0(B[9]), .B1(n60), .Y(n57) );
  AND2X1 U60 ( .A(n59), .B(n11), .Y(n60) );
  AOI2BB2X1 U61 ( .B0(n61), .B1(A[8]), .A0N(B[8]), .A1N(n62), .Y(n59) );
  NOR2X1 U62 ( .A(A[8]), .B(n61), .Y(n62) );
  OAI22XL U63 ( .A0(n63), .A1(n12), .B0(B[7]), .B1(n64), .Y(n61) );
  AND2X1 U64 ( .A(n63), .B(n12), .Y(n64) );
  AOI2BB2X1 U65 ( .B0(n65), .B1(A[6]), .A0N(B[6]), .A1N(n66), .Y(n63) );
  NOR2X1 U66 ( .A(A[6]), .B(n65), .Y(n66) );
  OAI22XL U67 ( .A0(n67), .A1(n13), .B0(B[5]), .B1(n68), .Y(n65) );
  AND2X1 U68 ( .A(n67), .B(n13), .Y(n68) );
  AOI2BB2X1 U69 ( .B0(n69), .B1(A[4]), .A0N(B[4]), .A1N(n70), .Y(n67) );
  NOR2X1 U70 ( .A(A[4]), .B(n69), .Y(n70) );
  OAI22XL U71 ( .A0(n71), .A1(n14), .B0(B[3]), .B1(n72), .Y(n69) );
  AND2X1 U72 ( .A(n71), .B(n14), .Y(n72) );
  AOI2BB2X1 U73 ( .B0(n73), .B1(A[2]), .A0N(B[2]), .A1N(n74), .Y(n71) );
  NOR2X1 U74 ( .A(A[2]), .B(n73), .Y(n74) );
  OAI22XL U75 ( .A0(n75), .A1(n15), .B0(B[1]), .B1(n76), .Y(n73) );
  AND2X1 U76 ( .A(n75), .B(n15), .Y(n76) );
  NOR2BX1 U77 ( .AN(B[0]), .B(A[0]), .Y(n75) );
endmodule


module Bubble ( clk, rst, Start, RData, RAddr, WAddr, WData, Wen, Finish );
  input [31:0] RData;
  output [9:0] RAddr;
  output [9:0] WAddr;
  output [31:0] WData;
  input clk, rst, Start;
  output Wen, Finish;
  wire   \diff[31] , N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59,
         N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73,
         N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87,
         N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N198, N200, N201,
         N202, N203, N204, N205, N206, N207, N209, N211, N212, N213, N214,
         N215, N216, N217, N218, N219, N220, N245, N246, N247, N248, N249,
         N250, N251, N252, N253, N254, N255, N259, N262, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313;
  wire   [31:0] rA;
  wire   [31:0] rB;
  wire   [1:0] state;
  wire   [9:0] idx;
  wire   [9:0] leng;
  wire   [1:0] count;
  wire   [10:0] \sub_86_2_aco/carry ;
  wire   [9:1] \r334/carry ;
  wire   [11:0] \r330/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30;
  assign WAddr[9] = RAddr[9];
  assign WAddr[8] = RAddr[8];
  assign WAddr[7] = RAddr[7];
  assign WAddr[6] = RAddr[6];
  assign WAddr[5] = RAddr[5];
  assign WAddr[4] = RAddr[4];
  assign WAddr[3] = RAddr[3];
  assign WAddr[2] = RAddr[2];
  assign WAddr[1] = RAddr[1];
  assign WAddr[0] = RAddr[0];
  assign Finish = N255;

  Bubble_DW01_inc_0 add_85 ( .A(idx), .SUM({N220, N219, N218, N217, N216, N215, 
        N214, N213, N212, N211}) );
  Bubble_DW01_sub_1 sub_27 ( .A(rA), .B(rB), .CI(1'b0), .DIFF({\diff[31] , 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30}) );
  EDFFX1 \rB_reg[0]  ( .D(N55), .E(n272), .CK(clk), .Q(rB[0]), .QN(n216) );
  EDFFX1 \rB_reg[28]  ( .D(N83), .E(n269), .CK(clk), .Q(rB[28]), .QN(n239) );
  EDFFX1 \rB_reg[26]  ( .D(N81), .E(n270), .CK(clk), .Q(rB[26]), .QN(n248) );
  EDFFX1 \rB_reg[24]  ( .D(N79), .E(n270), .CK(clk), .Q(rB[24]), .QN(n247) );
  EDFFX1 \rB_reg[22]  ( .D(N77), .E(n270), .CK(clk), .Q(rB[22]), .QN(n246) );
  EDFFX1 \rB_reg[20]  ( .D(N75), .E(n270), .CK(clk), .Q(rB[20]), .QN(n245) );
  EDFFX1 \rB_reg[18]  ( .D(N73), .E(n270), .CK(clk), .Q(rB[18]), .QN(n244) );
  EDFFX1 \rB_reg[16]  ( .D(N71), .E(n270), .CK(clk), .Q(rB[16]), .QN(n243) );
  EDFFX1 \rB_reg[14]  ( .D(N69), .E(n271), .CK(clk), .Q(rB[14]), .QN(n242) );
  EDFFX1 \rB_reg[12]  ( .D(N67), .E(n271), .CK(clk), .Q(rB[12]), .QN(n241) );
  EDFFX1 \rB_reg[10]  ( .D(N65), .E(n271), .CK(clk), .Q(rB[10]), .QN(n240) );
  EDFFX1 \rB_reg[8]  ( .D(N63), .E(n271), .CK(clk), .Q(rB[8]), .QN(n238) );
  EDFFX1 \rB_reg[6]  ( .D(N61), .E(n271), .CK(clk), .Q(rB[6]), .QN(n237) );
  EDFFX1 \rB_reg[4]  ( .D(N59), .E(n271), .CK(clk), .Q(rB[4]), .QN(n236) );
  EDFFX1 \rB_reg[2]  ( .D(N57), .E(n272), .CK(clk), .Q(rB[2]), .QN(n235) );
  EDFFX1 \rB_reg[30]  ( .D(N85), .E(n269), .CK(clk), .Q(rB[30]), .QN(n234) );
  EDFFX1 \rB_reg[29]  ( .D(N84), .E(n269), .CK(clk), .Q(rB[29]), .QN(n224) );
  EDFFX1 \rB_reg[27]  ( .D(N82), .E(n270), .CK(clk), .Q(rB[27]), .QN(n223) );
  EDFFX1 \rB_reg[25]  ( .D(N80), .E(n270), .CK(clk), .Q(rB[25]), .QN(n233) );
  EDFFX1 \rB_reg[23]  ( .D(N78), .E(n270), .CK(clk), .Q(rB[23]), .QN(n232) );
  EDFFX1 \rB_reg[21]  ( .D(N76), .E(n270), .CK(clk), .Q(rB[21]), .QN(n231) );
  EDFFX1 \rB_reg[19]  ( .D(N74), .E(n270), .CK(clk), .Q(rB[19]), .QN(n230) );
  EDFFX1 \rB_reg[17]  ( .D(N72), .E(n270), .CK(clk), .Q(rB[17]), .QN(n229) );
  EDFFX1 \rB_reg[15]  ( .D(N70), .E(n271), .CK(clk), .Q(rB[15]), .QN(n228) );
  EDFFX1 \rB_reg[13]  ( .D(N68), .E(n271), .CK(clk), .Q(rB[13]), .QN(n227) );
  EDFFX1 \rB_reg[11]  ( .D(N66), .E(n271), .CK(clk), .Q(rB[11]), .QN(n226) );
  EDFFX1 \rB_reg[9]  ( .D(N64), .E(n271), .CK(clk), .Q(rB[9]), .QN(n222) );
  EDFFX1 \rB_reg[7]  ( .D(N62), .E(n271), .CK(clk), .Q(rB[7]), .QN(n221) );
  EDFFX1 \rB_reg[5]  ( .D(N60), .E(n271), .CK(clk), .Q(rB[5]), .QN(n220) );
  EDFFX1 \rB_reg[3]  ( .D(N58), .E(n272), .CK(clk), .Q(rB[3]), .QN(n219) );
  EDFFX1 \rB_reg[1]  ( .D(N56), .E(n272), .CK(clk), .Q(rB[1]), .QN(n225) );
  EDFFX1 \rA_reg[0]  ( .D(N23), .E(n269), .CK(clk), .Q(rA[0]), .QN(n188) );
  EDFFX1 \rA_reg[30]  ( .D(N53), .E(n267), .CK(clk), .Q(rA[30]), .QN(n204) );
  EDFFX1 \rA_reg[28]  ( .D(N51), .E(n267), .CK(clk), .Q(rA[28]), .QN(n194) );
  EDFFX1 \rA_reg[26]  ( .D(N49), .E(n267), .CK(clk), .Q(rA[26]), .QN(n203) );
  EDFFX1 \rA_reg[24]  ( .D(N47), .E(n267), .CK(clk), .Q(rA[24]), .QN(n202) );
  EDFFX1 \rA_reg[22]  ( .D(N45), .E(n267), .CK(clk), .Q(rA[22]), .QN(n201) );
  EDFFX1 \rA_reg[20]  ( .D(N43), .E(n267), .CK(clk), .Q(rA[20]), .QN(n200) );
  EDFFX1 \rA_reg[18]  ( .D(N41), .E(n268), .CK(clk), .Q(rA[18]), .QN(n199) );
  EDFFX1 \rA_reg[16]  ( .D(N39), .E(n268), .CK(clk), .Q(rA[16]), .QN(n198) );
  EDFFX1 \rA_reg[14]  ( .D(N37), .E(n268), .CK(clk), .Q(rA[14]), .QN(n197) );
  EDFFX1 \rA_reg[12]  ( .D(N35), .E(n268), .CK(clk), .Q(rA[12]), .QN(n196) );
  EDFFX1 \rA_reg[10]  ( .D(N33), .E(n268), .CK(clk), .Q(rA[10]), .QN(n195) );
  EDFFX1 \rA_reg[8]  ( .D(N31), .E(n268), .CK(clk), .Q(rA[8]), .QN(n186) );
  EDFFX1 \rA_reg[6]  ( .D(N29), .E(n269), .CK(clk), .Q(rA[6]), .QN(n185) );
  EDFFX1 \rA_reg[4]  ( .D(N27), .E(n269), .CK(clk), .Q(rA[4]), .QN(n184) );
  EDFFX1 \rA_reg[2]  ( .D(N25), .E(n269), .CK(clk), .Q(rA[2]), .QN(n193) );
  EDFFX1 \rA_reg[31]  ( .D(N54), .E(n267), .CK(clk), .Q(rA[31]), .QN(n218) );
  EDFFX1 \rA_reg[29]  ( .D(N52), .E(n267), .CK(clk), .Q(rA[29]), .QN(n206) );
  EDFFX1 \rA_reg[27]  ( .D(N50), .E(n267), .CK(clk), .Q(rA[27]), .QN(n205) );
  EDFFX1 \rA_reg[25]  ( .D(N48), .E(n267), .CK(clk), .Q(rA[25]), .QN(n215) );
  EDFFX1 \rA_reg[23]  ( .D(N46), .E(n267), .CK(clk), .Q(rA[23]), .QN(n214) );
  EDFFX1 \rA_reg[21]  ( .D(N44), .E(n267), .CK(clk), .Q(rA[21]), .QN(n213) );
  EDFFX1 \rA_reg[19]  ( .D(N42), .E(n268), .CK(clk), .Q(rA[19]), .QN(n212) );
  EDFFX1 \rA_reg[17]  ( .D(N40), .E(n268), .CK(clk), .Q(rA[17]), .QN(n211) );
  EDFFX1 \rA_reg[15]  ( .D(N38), .E(n268), .CK(clk), .Q(rA[15]), .QN(n210) );
  EDFFX1 \rA_reg[13]  ( .D(N36), .E(n268), .CK(clk), .Q(rA[13]), .QN(n209) );
  EDFFX1 \rA_reg[11]  ( .D(N34), .E(n268), .CK(clk), .Q(rA[11]), .QN(n208) );
  EDFFX1 \rA_reg[9]  ( .D(N32), .E(n268), .CK(clk), .Q(rA[9]), .QN(n192) );
  EDFFX1 \rA_reg[7]  ( .D(N30), .E(n269), .CK(clk), .Q(rA[7]), .QN(n191) );
  EDFFX1 \rA_reg[5]  ( .D(N28), .E(n269), .CK(clk), .Q(rA[5]), .QN(n190) );
  EDFFX1 \rA_reg[3]  ( .D(N26), .E(n269), .CK(clk), .Q(rA[3]), .QN(n189) );
  EDFFX1 \rA_reg[1]  ( .D(N24), .E(n269), .CK(clk), .Q(rA[1]), .QN(n207) );
  EDFFX1 \rB_reg[31]  ( .D(N86), .E(n269), .CK(clk), .Q(rB[31]), .QN(n187) );
  DFFQX1 \state_reg[0]  ( .D(N21), .CK(clk), .Q(state[0]) );
  DFFQX1 \state_reg[1]  ( .D(N22), .CK(clk), .Q(state[1]) );
  DFFQX1 \count_reg[0]  ( .D(N107), .CK(clk), .Q(count[0]) );
  DFFQX1 \count_reg[1]  ( .D(N108), .CK(clk), .Q(count[1]) );
  EDFFX1 \idx_reg[9]  ( .D(N96), .E(n251), .CK(clk), .Q(idx[9]) );
  EDFFX1 \leng_reg[0]  ( .D(N97), .E(n251), .CK(clk), .Q(N198) );
  EDFFX1 \idx_reg[3]  ( .D(N90), .E(n251), .CK(clk), .Q(idx[3]) );
  EDFFX1 \idx_reg[5]  ( .D(N92), .E(n252), .CK(clk), .Q(idx[5]) );
  EDFFX1 \idx_reg[6]  ( .D(N93), .E(n251), .CK(clk), .Q(idx[6]) );
  EDFFX1 \idx_reg[7]  ( .D(N94), .E(n251), .CK(clk), .Q(idx[7]) );
  EDFFX1 \idx_reg[4]  ( .D(N91), .E(n252), .CK(clk), .Q(idx[4]) );
  EDFFX1 \idx_reg[8]  ( .D(N95), .E(n252), .CK(clk), .Q(idx[8]) );
  EDFFX1 \idx_reg[1]  ( .D(N88), .E(n251), .CK(clk), .Q(idx[1]) );
  EDFFX1 \leng_reg[9]  ( .D(N106), .E(n251), .CK(clk), .Q(leng[9]) );
  EDFFX1 \leng_reg[7]  ( .D(N104), .E(N259), .CK(clk), .Q(leng[7]) );
  EDFFX1 \leng_reg[8]  ( .D(N105), .E(n252), .CK(clk), .Q(leng[8]) );
  EDFFX1 \leng_reg[6]  ( .D(N103), .E(n251), .CK(clk), .Q(leng[6]) );
  EDFFX1 \idx_reg[2]  ( .D(N89), .E(n252), .CK(clk), .Q(idx[2]) );
  EDFFX1 \idx_reg[0]  ( .D(N87), .E(n252), .CK(clk), .Q(idx[0]) );
  EDFFX1 \leng_reg[2]  ( .D(N99), .E(n252), .CK(clk), .Q(leng[2]) );
  EDFFX1 \leng_reg[3]  ( .D(N100), .E(n251), .CK(clk), .Q(leng[3]) );
  EDFFX1 \leng_reg[4]  ( .D(N101), .E(N259), .CK(clk), .Q(leng[4]) );
  EDFFX1 \leng_reg[5]  ( .D(N102), .E(n252), .CK(clk), .Q(leng[5]) );
  EDFFX1 \leng_reg[1]  ( .D(N98), .E(N259), .CK(clk), .Q(leng[1]), .QN(n217)
         );
  OAI21XL U268 ( .A0(Wen), .A1(n157), .B0(n278), .Y(N262) );
  AOI2BB1X1 U269 ( .A0N(Start), .A1N(n156), .B0(rst), .Y(n155) );
  CLKINVX1 U270 ( .A(rst), .Y(n278) );
  CLKBUFX3 U271 ( .A(n273), .Y(n271) );
  CLKBUFX3 U272 ( .A(n273), .Y(n270) );
  CLKBUFX3 U273 ( .A(n274), .Y(n269) );
  CLKBUFX3 U274 ( .A(n274), .Y(n268) );
  CLKBUFX3 U275 ( .A(n274), .Y(n267) );
  CLKBUFX3 U276 ( .A(n273), .Y(n272) );
  CLKBUFX3 U277 ( .A(n158), .Y(n262) );
  CLKBUFX3 U278 ( .A(n160), .Y(n257) );
  CLKBUFX3 U279 ( .A(n160), .Y(n256) );
  CLKBUFX3 U280 ( .A(n159), .Y(n260) );
  CLKBUFX3 U281 ( .A(n159), .Y(n259) );
  CLKBUFX3 U282 ( .A(n158), .Y(n263) );
  CLKBUFX3 U283 ( .A(n161), .Y(n253) );
  CLKBUFX3 U284 ( .A(n161), .Y(n254) );
  CLKINVX1 U285 ( .A(n167), .Y(n276) );
  CLKINVX1 U286 ( .A(n169), .Y(n277) );
  CLKBUFX3 U287 ( .A(n161), .Y(n255) );
  CLKBUFX3 U288 ( .A(n159), .Y(n261) );
  CLKBUFX3 U289 ( .A(N262), .Y(n273) );
  CLKBUFX3 U290 ( .A(N262), .Y(n274) );
  CLKBUFX3 U291 ( .A(n160), .Y(n258) );
  CLKINVX1 U292 ( .A(n264), .Y(n266) );
  CLKINVX1 U293 ( .A(N209), .Y(n275) );
  NOR2BX1 U294 ( .AN(n157), .B(N209), .Y(n154) );
  OAI2BB1X1 U295 ( .A0N(N219), .A1N(n154), .B0(n155), .Y(N95) );
  OAI2BB1X1 U296 ( .A0N(N218), .A1N(n154), .B0(n155), .Y(N94) );
  OAI2BB1X1 U297 ( .A0N(N217), .A1N(n154), .B0(n155), .Y(N93) );
  OAI2BB1X1 U298 ( .A0N(N216), .A1N(n154), .B0(n155), .Y(N92) );
  OAI2BB1X1 U299 ( .A0N(N215), .A1N(n154), .B0(n155), .Y(N91) );
  OAI2BB1X1 U300 ( .A0N(N214), .A1N(n154), .B0(n155), .Y(N90) );
  OAI2BB1X1 U301 ( .A0N(N213), .A1N(n154), .B0(n155), .Y(N89) );
  OAI2BB1X1 U302 ( .A0N(N212), .A1N(n154), .B0(n155), .Y(N88) );
  NAND2BX1 U303 ( .AN(n165), .B(n276), .Y(n161) );
  OAI21XL U304 ( .A0(Wen), .A1(n183), .B0(n278), .Y(n251) );
  OAI21XL U305 ( .A0(Wen), .A1(n183), .B0(n278), .Y(N259) );
  OAI21XL U306 ( .A0(Wen), .A1(n183), .B0(n278), .Y(n252) );
  NOR2X1 U307 ( .A(n312), .B(n311), .Y(Wen) );
  OAI22XL U308 ( .A0(n216), .A1(n262), .B0(n310), .B1(n261), .Y(N55) );
  OAI22XL U309 ( .A0(n225), .A1(n262), .B0(n309), .B1(n261), .Y(N56) );
  OAI22XL U310 ( .A0(n235), .A1(n262), .B0(n308), .B1(n261), .Y(N57) );
  OAI22XL U311 ( .A0(n219), .A1(n262), .B0(n261), .B1(n307), .Y(N58) );
  OAI22XL U312 ( .A0(n236), .A1(n262), .B0(n261), .B1(n306), .Y(N59) );
  OAI22XL U313 ( .A0(n220), .A1(n262), .B0(n261), .B1(n305), .Y(N60) );
  OAI22XL U314 ( .A0(n188), .A1(n258), .B0(n310), .B1(n253), .Y(N23) );
  OAI22XL U315 ( .A0(n207), .A1(n258), .B0(n309), .B1(n253), .Y(N24) );
  OAI22XL U316 ( .A0(n193), .A1(n258), .B0(n308), .B1(n253), .Y(N25) );
  OAI22XL U317 ( .A0(n189), .A1(n258), .B0(n307), .B1(n253), .Y(N26) );
  OAI22XL U318 ( .A0(n184), .A1(n258), .B0(n306), .B1(n253), .Y(N27) );
  OAI22XL U319 ( .A0(n190), .A1(n258), .B0(n305), .B1(n253), .Y(N28) );
  OAI22XL U320 ( .A0(n185), .A1(n257), .B0(n304), .B1(n253), .Y(N29) );
  OAI22XL U321 ( .A0(n191), .A1(n257), .B0(n303), .B1(n253), .Y(N30) );
  OAI22XL U322 ( .A0(n186), .A1(n257), .B0(n302), .B1(n253), .Y(N31) );
  OAI22XL U323 ( .A0(n192), .A1(n257), .B0(n301), .B1(n253), .Y(N32) );
  OAI22XL U324 ( .A0(n195), .A1(n257), .B0(n300), .B1(n253), .Y(N33) );
  OAI22XL U325 ( .A0(n208), .A1(n257), .B0(n299), .B1(n253), .Y(N34) );
  OAI22XL U326 ( .A0(n196), .A1(n257), .B0(n298), .B1(n254), .Y(N35) );
  OAI22XL U327 ( .A0(n209), .A1(n257), .B0(n297), .B1(n254), .Y(N36) );
  OAI22XL U328 ( .A0(n197), .A1(n257), .B0(n296), .B1(n254), .Y(N37) );
  OAI22XL U329 ( .A0(n210), .A1(n257), .B0(n295), .B1(n254), .Y(N38) );
  OAI22XL U330 ( .A0(n198), .A1(n257), .B0(n294), .B1(n254), .Y(N39) );
  OAI22XL U331 ( .A0(n211), .A1(n257), .B0(n293), .B1(n254), .Y(N40) );
  OAI22XL U332 ( .A0(n199), .A1(n257), .B0(n292), .B1(n254), .Y(N41) );
  OAI22XL U333 ( .A0(n212), .A1(n256), .B0(n291), .B1(n254), .Y(N42) );
  OAI22XL U334 ( .A0(n200), .A1(n256), .B0(n290), .B1(n254), .Y(N43) );
  OAI22XL U335 ( .A0(n213), .A1(n256), .B0(n289), .B1(n254), .Y(N44) );
  OAI22XL U336 ( .A0(n201), .A1(n256), .B0(n288), .B1(n254), .Y(N45) );
  OAI22XL U337 ( .A0(n214), .A1(n256), .B0(n287), .B1(n254), .Y(N46) );
  OAI22XL U338 ( .A0(n202), .A1(n256), .B0(n286), .B1(n255), .Y(N47) );
  OAI22XL U339 ( .A0(n215), .A1(n256), .B0(n285), .B1(n255), .Y(N48) );
  OAI22XL U340 ( .A0(n203), .A1(n256), .B0(n284), .B1(n255), .Y(N49) );
  OAI22XL U341 ( .A0(n205), .A1(n256), .B0(n283), .B1(n255), .Y(N50) );
  OAI22XL U342 ( .A0(n194), .A1(n256), .B0(n282), .B1(n255), .Y(N51) );
  OAI22XL U343 ( .A0(n206), .A1(n256), .B0(n281), .B1(n255), .Y(N52) );
  OAI22XL U344 ( .A0(n204), .A1(n256), .B0(n280), .B1(n255), .Y(N53) );
  OAI22XL U345 ( .A0(n218), .A1(n256), .B0(n279), .B1(n255), .Y(N54) );
  OAI22XL U346 ( .A0(n237), .A1(n262), .B0(n260), .B1(n304), .Y(N61) );
  OAI22XL U347 ( .A0(n221), .A1(n262), .B0(n260), .B1(n303), .Y(N62) );
  OAI22XL U348 ( .A0(n238), .A1(n262), .B0(n260), .B1(n302), .Y(N63) );
  OAI22XL U349 ( .A0(n222), .A1(n262), .B0(n260), .B1(n301), .Y(N64) );
  OAI22XL U350 ( .A0(n240), .A1(n262), .B0(n260), .B1(n300), .Y(N65) );
  OAI22XL U351 ( .A0(n226), .A1(n262), .B0(n260), .B1(n299), .Y(N66) );
  OAI22XL U352 ( .A0(n241), .A1(n262), .B0(n260), .B1(n298), .Y(N67) );
  OAI22XL U353 ( .A0(n227), .A1(n262), .B0(n260), .B1(n297), .Y(N68) );
  OAI22XL U354 ( .A0(n242), .A1(n262), .B0(n260), .B1(n296), .Y(N69) );
  OAI22XL U355 ( .A0(n228), .A1(n262), .B0(n260), .B1(n295), .Y(N70) );
  OAI22XL U356 ( .A0(n243), .A1(n262), .B0(n260), .B1(n294), .Y(N71) );
  OAI22XL U357 ( .A0(n229), .A1(n262), .B0(n260), .B1(n293), .Y(N72) );
  OAI22XL U358 ( .A0(n244), .A1(n262), .B0(n260), .B1(n292), .Y(N73) );
  OAI22XL U359 ( .A0(n230), .A1(n262), .B0(n259), .B1(n291), .Y(N74) );
  OAI22XL U360 ( .A0(n245), .A1(n263), .B0(n259), .B1(n290), .Y(N75) );
  OAI22XL U361 ( .A0(n231), .A1(n263), .B0(n259), .B1(n289), .Y(N76) );
  OAI22XL U362 ( .A0(n246), .A1(n263), .B0(n259), .B1(n288), .Y(N77) );
  OAI22XL U363 ( .A0(n232), .A1(n263), .B0(n259), .B1(n287), .Y(N78) );
  OAI22XL U364 ( .A0(n247), .A1(n263), .B0(n259), .B1(n286), .Y(N79) );
  OAI22XL U365 ( .A0(n233), .A1(n263), .B0(n259), .B1(n285), .Y(N80) );
  OAI22XL U366 ( .A0(n248), .A1(n263), .B0(n259), .B1(n284), .Y(N81) );
  OAI22XL U367 ( .A0(n223), .A1(n263), .B0(n259), .B1(n283), .Y(N82) );
  OAI22XL U368 ( .A0(n239), .A1(n263), .B0(n259), .B1(n282), .Y(N83) );
  OAI22XL U369 ( .A0(n224), .A1(n263), .B0(n259), .B1(n281), .Y(N84) );
  OAI22XL U370 ( .A0(n234), .A1(n263), .B0(n259), .B1(n280), .Y(N85) );
  OAI22XL U371 ( .A0(n187), .A1(n263), .B0(n259), .B1(n279), .Y(N86) );
  NAND2X1 U372 ( .A(n276), .B(n166), .Y(n159) );
  NAND2X1 U373 ( .A(n276), .B(n165), .Y(n160) );
  NAND2X1 U374 ( .A(n183), .B(n278), .Y(n167) );
  NAND2X1 U375 ( .A(n157), .B(n278), .Y(n169) );
  OR2X1 U376 ( .A(n166), .B(n167), .Y(n158) );
  NOR2X1 U377 ( .A(n262), .B(n165), .Y(N108) );
  NAND2X1 U378 ( .A(n311), .B(n312), .Y(n156) );
  NAND4X1 U379 ( .A(n168), .B(n169), .C(n250), .D(n167), .Y(N21) );
  NAND3X1 U380 ( .A(n165), .B(n278), .C(Wen), .Y(n168) );
  NOR2X1 U381 ( .A(N259), .B(n152), .Y(N107) );
  OAI2BB1X1 U382 ( .A0N(n278), .A1N(Wen), .B0(n261), .Y(N22) );
  OAI22XL U383 ( .A0(n151), .A1(n235), .B0(n266), .B1(n193), .Y(WData[2]) );
  OAI22XL U384 ( .A0(n265), .A1(n219), .B0(n266), .B1(n189), .Y(WData[3]) );
  OAI22XL U385 ( .A0(n264), .A1(n236), .B0(n266), .B1(n184), .Y(WData[4]) );
  OAI22XL U386 ( .A0(n151), .A1(n220), .B0(n266), .B1(n190), .Y(WData[5]) );
  OAI22XL U387 ( .A0(n265), .A1(n237), .B0(n266), .B1(n185), .Y(WData[6]) );
  OAI22XL U388 ( .A0(n264), .A1(n221), .B0(n266), .B1(n191), .Y(WData[7]) );
  OAI22XL U389 ( .A0(n151), .A1(n238), .B0(n266), .B1(n186), .Y(WData[8]) );
  OAI22XL U390 ( .A0(n265), .A1(n222), .B0(n266), .B1(n192), .Y(WData[9]) );
  OAI22XL U391 ( .A0(n265), .A1(n223), .B0(n266), .B1(n205), .Y(WData[27]) );
  OAI22XL U392 ( .A0(n264), .A1(n239), .B0(n266), .B1(n194), .Y(WData[28]) );
  OAI22XL U393 ( .A0(n151), .A1(n224), .B0(n266), .B1(n206), .Y(WData[29]) );
  OAI22XL U394 ( .A0(n265), .A1(n234), .B0(n266), .B1(n204), .Y(WData[30]) );
  OAI22XL U395 ( .A0(n264), .A1(n187), .B0(n266), .B1(n218), .Y(WData[31]) );
  OAI22XL U396 ( .A0(n151), .A1(n216), .B0(n266), .B1(n188), .Y(WData[0]) );
  OAI22XL U397 ( .A0(n265), .A1(n225), .B0(n266), .B1(n207), .Y(WData[1]) );
  OAI22XL U398 ( .A0(n264), .A1(n240), .B0(n266), .B1(n195), .Y(WData[10]) );
  OAI22XL U399 ( .A0(n151), .A1(n226), .B0(n266), .B1(n208), .Y(WData[11]) );
  OAI22XL U400 ( .A0(n265), .A1(n241), .B0(n266), .B1(n196), .Y(WData[12]) );
  OAI22XL U401 ( .A0(n264), .A1(n227), .B0(n266), .B1(n209), .Y(WData[13]) );
  OAI22XL U402 ( .A0(n151), .A1(n242), .B0(n266), .B1(n197), .Y(WData[14]) );
  OAI22XL U403 ( .A0(n265), .A1(n228), .B0(n266), .B1(n210), .Y(WData[15]) );
  OAI22XL U404 ( .A0(n264), .A1(n243), .B0(n266), .B1(n198), .Y(WData[16]) );
  OAI22XL U405 ( .A0(n151), .A1(n229), .B0(n266), .B1(n211), .Y(WData[17]) );
  OAI22XL U406 ( .A0(n265), .A1(n244), .B0(n266), .B1(n199), .Y(WData[18]) );
  OAI22XL U407 ( .A0(n264), .A1(n230), .B0(n266), .B1(n212), .Y(WData[19]) );
  OAI22XL U408 ( .A0(n264), .A1(n245), .B0(n266), .B1(n200), .Y(WData[20]) );
  OAI22XL U409 ( .A0(n151), .A1(n231), .B0(n266), .B1(n213), .Y(WData[21]) );
  OAI22XL U410 ( .A0(n265), .A1(n246), .B0(n266), .B1(n201), .Y(WData[22]) );
  OAI22XL U411 ( .A0(n264), .A1(n232), .B0(n266), .B1(n214), .Y(WData[23]) );
  OAI22XL U412 ( .A0(n151), .A1(n247), .B0(n266), .B1(n202), .Y(WData[24]) );
  OAI22XL U413 ( .A0(n265), .A1(n233), .B0(n266), .B1(n215), .Y(WData[25]) );
  OAI22XL U414 ( .A0(n264), .A1(n248), .B0(n266), .B1(n203), .Y(WData[26]) );
  CLKBUFX3 U415 ( .A(n151), .Y(n264) );
  CLKBUFX3 U416 ( .A(n151), .Y(n265) );
  NOR2X1 U417 ( .A(leng[9]), .B(\r330/carry [9]), .Y(n249) );
  OAI2BB2XL U418 ( .B0(n250), .B1(n302), .A0N(N253), .A1N(n277), .Y(N105) );
  NOR3X1 U419 ( .A(n180), .B(n181), .C(n182), .Y(n172) );
  XOR2X1 U420 ( .A(idx[4]), .B(N202), .Y(n182) );
  XOR2X1 U421 ( .A(idx[8]), .B(N206), .Y(n180) );
  XOR2X1 U422 ( .A(idx[9]), .B(N207), .Y(n181) );
  AND4X1 U423 ( .A(n170), .B(n171), .C(n172), .D(n173), .Y(N209) );
  XNOR2X1 U424 ( .A(idx[6]), .B(N204), .Y(n171) );
  XNOR2X1 U425 ( .A(idx[7]), .B(N205), .Y(n170) );
  NOR4X1 U426 ( .A(n174), .B(n175), .C(n249), .D(n176), .Y(n173) );
  OAI2BB2XL U427 ( .B0(n250), .B1(n303), .A0N(N252), .A1N(n277), .Y(N104) );
  OAI2BB2XL U428 ( .B0(n250), .B1(n304), .A0N(N251), .A1N(n277), .Y(N103) );
  OAI2BB2XL U429 ( .B0(n250), .B1(n301), .A0N(N254), .A1N(n277), .Y(N106) );
  NAND3X1 U430 ( .A(n177), .B(n178), .C(n179), .Y(n174) );
  XNOR2X1 U431 ( .A(idx[1]), .B(n217), .Y(n177) );
  XNOR2X1 U432 ( .A(idx[3]), .B(N201), .Y(n179) );
  XNOR2X1 U433 ( .A(idx[5]), .B(N203), .Y(n178) );
  OAI2BB2XL U434 ( .B0(n250), .B1(n305), .A0N(N250), .A1N(n277), .Y(N102) );
  OAI2BB2XL U435 ( .B0(n250), .B1(n306), .A0N(N249), .A1N(n277), .Y(N101) );
  OAI2BB2XL U436 ( .B0(n250), .B1(n307), .A0N(N248), .A1N(n277), .Y(N100) );
  OAI2BB2XL U437 ( .B0(n250), .B1(n308), .A0N(N247), .A1N(n277), .Y(N99) );
  XOR2X1 U438 ( .A(idx[2]), .B(N200), .Y(n176) );
  XOR2X1 U439 ( .A(idx[0]), .B(N198), .Y(n175) );
  OAI2BB2XL U440 ( .B0(n250), .B1(n309), .A0N(N246), .A1N(n277), .Y(N98) );
  OAI2BB2XL U441 ( .B0(n250), .B1(n310), .A0N(N245), .A1N(n277), .Y(N97) );
  OAI2BB1X1 U442 ( .A0N(N220), .A1N(n154), .B0(n155), .Y(N96) );
  OAI2BB1X1 U443 ( .A0N(N211), .A1N(n154), .B0(n155), .Y(N87) );
  NOR2X1 U444 ( .A(n311), .B(state[1]), .Y(n183) );
  NAND2X1 U445 ( .A(count[0]), .B(n313), .Y(n165) );
  NOR2X1 U446 ( .A(n312), .B(state[0]), .Y(n157) );
  NOR2X1 U447 ( .A(n313), .B(count[0]), .Y(n166) );
  CLKBUFX3 U448 ( .A(n153), .Y(n250) );
  NAND3BX1 U449 ( .AN(n156), .B(n278), .C(Start), .Y(n153) );
  CLKINVX1 U450 ( .A(state[1]), .Y(n312) );
  CLKINVX1 U451 ( .A(state[0]), .Y(n311) );
  CLKINVX1 U452 ( .A(count[1]), .Y(n313) );
  OR2X1 U453 ( .A(count[0]), .B(count[1]), .Y(n152) );
  XOR2X1 U454 ( .A(n152), .B(\diff[31] ), .Y(n151) );
  ADDFXL U455 ( .A(idx[1]), .B(count[1]), .CI(\r334/carry [1]), .CO(
        \r334/carry [2]), .S(RAddr[1]) );
  CLKINVX1 U456 ( .A(RData[0]), .Y(n310) );
  CLKINVX1 U457 ( .A(RData[1]), .Y(n309) );
  CLKINVX1 U458 ( .A(RData[2]), .Y(n308) );
  CLKINVX1 U459 ( .A(RData[3]), .Y(n307) );
  CLKINVX1 U460 ( .A(RData[4]), .Y(n306) );
  CLKINVX1 U461 ( .A(RData[5]), .Y(n305) );
  CLKINVX1 U462 ( .A(RData[6]), .Y(n304) );
  CLKINVX1 U463 ( .A(RData[7]), .Y(n303) );
  CLKINVX1 U464 ( .A(RData[8]), .Y(n302) );
  CLKINVX1 U465 ( .A(RData[9]), .Y(n301) );
  AND4X1 U466 ( .A(N198), .B(Start), .C(n162), .D(n163), .Y(N255) );
  NOR3X1 U467 ( .A(leng[1]), .B(leng[3]), .C(leng[2]), .Y(n162) );
  NOR4X1 U468 ( .A(n164), .B(leng[6]), .C(leng[4]), .D(leng[5]), .Y(n163) );
  OR3X2 U469 ( .A(leng[7]), .B(leng[9]), .C(leng[8]), .Y(n164) );
  CLKINVX1 U470 ( .A(RData[10]), .Y(n300) );
  CLKINVX1 U471 ( .A(RData[11]), .Y(n299) );
  CLKINVX1 U472 ( .A(RData[12]), .Y(n298) );
  CLKINVX1 U473 ( .A(RData[13]), .Y(n297) );
  CLKINVX1 U474 ( .A(RData[14]), .Y(n296) );
  CLKINVX1 U475 ( .A(RData[15]), .Y(n295) );
  CLKINVX1 U476 ( .A(RData[16]), .Y(n294) );
  CLKINVX1 U477 ( .A(RData[17]), .Y(n293) );
  CLKINVX1 U478 ( .A(RData[18]), .Y(n292) );
  CLKINVX1 U479 ( .A(RData[19]), .Y(n291) );
  CLKINVX1 U480 ( .A(RData[20]), .Y(n290) );
  CLKINVX1 U481 ( .A(RData[21]), .Y(n289) );
  CLKINVX1 U482 ( .A(RData[22]), .Y(n288) );
  CLKINVX1 U483 ( .A(RData[23]), .Y(n287) );
  CLKINVX1 U484 ( .A(RData[24]), .Y(n286) );
  CLKINVX1 U485 ( .A(RData[25]), .Y(n285) );
  CLKINVX1 U486 ( .A(RData[26]), .Y(n284) );
  CLKINVX1 U487 ( .A(RData[27]), .Y(n283) );
  CLKINVX1 U488 ( .A(RData[28]), .Y(n282) );
  CLKINVX1 U489 ( .A(RData[29]), .Y(n281) );
  CLKINVX1 U490 ( .A(RData[30]), .Y(n280) );
  CLKINVX1 U491 ( .A(RData[31]), .Y(n279) );
  XOR2X1 U492 ( .A(idx[9]), .B(\r334/carry [9]), .Y(RAddr[9]) );
  AND2X1 U493 ( .A(\r334/carry [8]), .B(idx[8]), .Y(\r334/carry [9]) );
  XOR2X1 U494 ( .A(idx[8]), .B(\r334/carry [8]), .Y(RAddr[8]) );
  AND2X1 U495 ( .A(\r334/carry [7]), .B(idx[7]), .Y(\r334/carry [8]) );
  XOR2X1 U496 ( .A(idx[7]), .B(\r334/carry [7]), .Y(RAddr[7]) );
  AND2X1 U497 ( .A(\r334/carry [6]), .B(idx[6]), .Y(\r334/carry [7]) );
  XOR2X1 U498 ( .A(idx[6]), .B(\r334/carry [6]), .Y(RAddr[6]) );
  AND2X1 U499 ( .A(\r334/carry [5]), .B(idx[5]), .Y(\r334/carry [6]) );
  XOR2X1 U500 ( .A(idx[5]), .B(\r334/carry [5]), .Y(RAddr[5]) );
  AND2X1 U501 ( .A(\r334/carry [4]), .B(idx[4]), .Y(\r334/carry [5]) );
  XOR2X1 U502 ( .A(idx[4]), .B(\r334/carry [4]), .Y(RAddr[4]) );
  AND2X1 U503 ( .A(\r334/carry [3]), .B(idx[3]), .Y(\r334/carry [4]) );
  XOR2X1 U504 ( .A(idx[3]), .B(\r334/carry [3]), .Y(RAddr[3]) );
  AND2X1 U505 ( .A(\r334/carry [2]), .B(idx[2]), .Y(\r334/carry [3]) );
  XOR2X1 U506 ( .A(idx[2]), .B(\r334/carry [2]), .Y(RAddr[2]) );
  AND2X1 U507 ( .A(idx[0]), .B(count[0]), .Y(\r334/carry [1]) );
  XOR2X1 U508 ( .A(count[0]), .B(idx[0]), .Y(RAddr[0]) );
  XNOR2X1 U509 ( .A(leng[9]), .B(\sub_86_2_aco/carry [9]), .Y(N254) );
  OR2X1 U510 ( .A(leng[8]), .B(\sub_86_2_aco/carry [8]), .Y(
        \sub_86_2_aco/carry [9]) );
  XNOR2X1 U511 ( .A(\sub_86_2_aco/carry [8]), .B(leng[8]), .Y(N253) );
  OR2X1 U512 ( .A(leng[7]), .B(\sub_86_2_aco/carry [7]), .Y(
        \sub_86_2_aco/carry [8]) );
  XNOR2X1 U513 ( .A(\sub_86_2_aco/carry [7]), .B(leng[7]), .Y(N252) );
  OR2X1 U514 ( .A(leng[6]), .B(\sub_86_2_aco/carry [6]), .Y(
        \sub_86_2_aco/carry [7]) );
  XNOR2X1 U515 ( .A(\sub_86_2_aco/carry [6]), .B(leng[6]), .Y(N251) );
  OR2X1 U516 ( .A(leng[5]), .B(\sub_86_2_aco/carry [5]), .Y(
        \sub_86_2_aco/carry [6]) );
  XNOR2X1 U517 ( .A(\sub_86_2_aco/carry [5]), .B(leng[5]), .Y(N250) );
  OR2X1 U518 ( .A(leng[4]), .B(\sub_86_2_aco/carry [4]), .Y(
        \sub_86_2_aco/carry [5]) );
  XNOR2X1 U519 ( .A(\sub_86_2_aco/carry [4]), .B(leng[4]), .Y(N249) );
  OR2X1 U520 ( .A(leng[3]), .B(\sub_86_2_aco/carry [3]), .Y(
        \sub_86_2_aco/carry [4]) );
  XNOR2X1 U521 ( .A(\sub_86_2_aco/carry [3]), .B(leng[3]), .Y(N248) );
  OR2X1 U522 ( .A(leng[2]), .B(\sub_86_2_aco/carry [2]), .Y(
        \sub_86_2_aco/carry [3]) );
  XNOR2X1 U523 ( .A(\sub_86_2_aco/carry [2]), .B(leng[2]), .Y(N247) );
  OR2X1 U524 ( .A(leng[1]), .B(\sub_86_2_aco/carry [1]), .Y(
        \sub_86_2_aco/carry [2]) );
  XNOR2X1 U525 ( .A(\sub_86_2_aco/carry [1]), .B(leng[1]), .Y(N246) );
  OR2X1 U526 ( .A(n275), .B(N198), .Y(\sub_86_2_aco/carry [1]) );
  XNOR2X1 U527 ( .A(N198), .B(n275), .Y(N245) );
  XNOR2X1 U528 ( .A(\r330/carry [9]), .B(leng[9]), .Y(N207) );
  OR2X1 U529 ( .A(leng[8]), .B(\r330/carry [8]), .Y(\r330/carry [9]) );
  XNOR2X1 U530 ( .A(\r330/carry [8]), .B(leng[8]), .Y(N206) );
  OR2X1 U531 ( .A(leng[7]), .B(\r330/carry [7]), .Y(\r330/carry [8]) );
  XNOR2X1 U532 ( .A(\r330/carry [7]), .B(leng[7]), .Y(N205) );
  OR2X1 U533 ( .A(leng[6]), .B(\r330/carry [6]), .Y(\r330/carry [7]) );
  XNOR2X1 U534 ( .A(\r330/carry [6]), .B(leng[6]), .Y(N204) );
  OR2X1 U535 ( .A(leng[5]), .B(\r330/carry [5]), .Y(\r330/carry [6]) );
  XNOR2X1 U536 ( .A(\r330/carry [5]), .B(leng[5]), .Y(N203) );
  OR2X1 U537 ( .A(leng[4]), .B(\r330/carry [4]), .Y(\r330/carry [5]) );
  XNOR2X1 U538 ( .A(\r330/carry [4]), .B(leng[4]), .Y(N202) );
  OR2X1 U539 ( .A(leng[3]), .B(\r330/carry [3]), .Y(\r330/carry [4]) );
  XNOR2X1 U540 ( .A(\r330/carry [3]), .B(leng[3]), .Y(N201) );
  OR2X1 U541 ( .A(leng[2]), .B(leng[1]), .Y(\r330/carry [3]) );
  XNOR2X1 U542 ( .A(leng[1]), .B(leng[2]), .Y(N200) );
endmodule

