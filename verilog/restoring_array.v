`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2022 16:29:53
// Design Name: 
// Module Name: top_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module restorin_array(
    a,
    q
    );



input [31:0] a;
output [15:0] q;



wire q15_row_1_sout;
wire q15_row_1_bout;
wire q15_row_2_sout;
wire q15_row_2_bout;


wire q14_row_1_sout;
wire q14_row_1_bout;
wire q14_row_2_sout;
wire q14_row_2_bout;
wire q14_row_3_sout;
wire q14_row_3_bout;
wire q14_row_4_sout;
wire q14_row_4_bout;


wire q13_row_1_sout;
wire q13_row_1_bout;
wire q13_row_2_sout;
wire q13_row_2_bout;
wire q13_row_3_sout;
wire q13_row_3_bout;
wire q13_row_4_sout;
wire q13_row_4_bout;
wire q13_row_5_sout;
wire q13_row_5_bout;
wire q13_row_6_sout;
wire q13_row_6_bout;


wire q12_row_1_sout;
wire q12_row_1_bout;
wire q12_row_2_sout;
wire q12_row_2_bout;
wire q12_row_3_sout;
wire q12_row_3_bout;
wire q12_row_4_sout;
wire q12_row_4_bout;
wire q12_row_5_sout;
wire q12_row_5_bout;
wire q12_row_6_sout;
wire q12_row_6_bout;
wire q12_row_7_sout;
wire q12_row_7_bout;
wire q12_row_8_sout;
wire q12_row_8_bout;


wire q11_row_1_sout;
wire q11_row_1_bout;
wire q11_row_2_sout;
wire q11_row_2_bout;
wire q11_row_3_sout;
wire q11_row_3_bout;
wire q11_row_4_sout;
wire q11_row_4_bout;
wire q11_row_5_sout;
wire q11_row_5_bout;
wire q11_row_6_sout;
wire q11_row_6_bout;
wire q11_row_7_sout;
wire q11_row_7_bout;
wire q11_row_8_sout;
wire q11_row_8_bout;
wire q11_row_9_sout;
wire q11_row_9_bout;
wire q11_row_10_sout;
wire q11_row_10_bout;


wire q10_row_1_sout;
wire q10_row_1_bout;
wire q10_row_2_sout;
wire q10_row_2_bout;
wire q10_row_3_sout;
wire q10_row_3_bout;
wire q10_row_4_sout;
wire q10_row_4_bout;
wire q10_row_5_sout;
wire q10_row_5_bout;
wire q10_row_6_sout;
wire q10_row_6_bout;
wire q10_row_7_sout;
wire q10_row_7_bout;
wire q10_row_8_sout;
wire q10_row_8_bout;
wire q10_row_9_sout;
wire q10_row_9_bout;
wire q10_row_10_sout;
wire q10_row_10_bout;
wire q10_row_11_sout;
wire q10_row_11_bout;
wire q10_row_12_sout;
wire q10_row_12_bout;


wire q9_row_1_sout;
wire q9_row_1_bout;
wire q9_row_2_sout;
wire q9_row_2_bout;
wire q9_row_3_sout;
wire q9_row_3_bout;
wire q9_row_4_sout;
wire q9_row_4_bout;
wire q9_row_5_sout;
wire q9_row_5_bout;
wire q9_row_6_sout;
wire q9_row_6_bout;
wire q9_row_7_sout;
wire q9_row_7_bout;
wire q9_row_8_sout;
wire q9_row_8_bout;
wire q9_row_9_sout;
wire q9_row_9_bout;
wire q9_row_10_sout;
wire q9_row_10_bout;
wire q9_row_11_sout;
wire q9_row_11_bout;
wire q9_row_12_sout;
wire q9_row_12_bout;
wire q9_row_13_sout;
wire q9_row_13_bout;
wire q9_row_14_sout;
wire q9_row_14_bout;


wire q8_row_1_sout;
wire q8_row_1_bout;
wire q8_row_2_sout;
wire q8_row_2_bout;
wire q8_row_3_sout;
wire q8_row_3_bout;
wire q8_row_4_sout;
wire q8_row_4_bout;
wire q8_row_5_sout;
wire q8_row_5_bout;
wire q8_row_6_sout;
wire q8_row_6_bout;
wire q8_row_7_sout;
wire q8_row_7_bout;
wire q8_row_8_sout;
wire q8_row_8_bout;
wire q8_row_9_sout;
wire q8_row_9_bout;
wire q8_row_10_sout;
wire q8_row_10_bout;
wire q8_row_11_sout;
wire q8_row_11_bout;
wire q8_row_12_sout;
wire q8_row_12_bout;
wire q8_row_13_sout;
wire q8_row_13_bout;
wire q8_row_14_sout;
wire q8_row_14_bout;
wire q8_row_15_sout;
wire q8_row_15_bout;
wire q8_row_16_sout;
wire q8_row_16_bout;


wire q7_row_1_sout;
wire q7_row_1_bout;
wire q7_row_2_sout;
wire q7_row_2_bout;
wire q7_row_3_sout;
wire q7_row_3_bout;
wire q7_row_4_sout;
wire q7_row_4_bout;
wire q7_row_5_sout;
wire q7_row_5_bout;
wire q7_row_6_sout;
wire q7_row_6_bout;
wire q7_row_7_sout;
wire q7_row_7_bout;
wire q7_row_8_sout;
wire q7_row_8_bout;
wire q7_row_9_sout;
wire q7_row_9_bout;
wire q7_row_10_sout;
wire q7_row_10_bout;
wire q7_row_11_sout;
wire q7_row_11_bout;
wire q7_row_12_sout;
wire q7_row_12_bout;
wire q7_row_13_sout;
wire q7_row_13_bout;
wire q7_row_14_sout;
wire q7_row_14_bout;
wire q7_row_15_sout;
wire q7_row_15_bout;
wire q7_row_16_sout;
wire q7_row_16_bout;
wire q7_row_17_sout;
wire q7_row_17_bout;
wire q7_row_18_sout;
wire q7_row_18_bout;


wire q6_row_1_sout;
wire q6_row_1_bout;
wire q6_row_2_sout;
wire q6_row_2_bout;
wire q6_row_3_sout;
wire q6_row_3_bout;
wire q6_row_4_sout;
wire q6_row_4_bout;
wire q6_row_5_sout;
wire q6_row_5_bout;
wire q6_row_6_sout;
wire q6_row_6_bout;
wire q6_row_7_sout;
wire q6_row_7_bout;
wire q6_row_8_sout;
wire q6_row_8_bout;
wire q6_row_9_sout;
wire q6_row_9_bout;
wire q6_row_10_sout;
wire q6_row_10_bout;
wire q6_row_11_sout;
wire q6_row_11_bout;
wire q6_row_12_sout;
wire q6_row_12_bout;
wire q6_row_13_sout;
wire q6_row_13_bout;
wire q6_row_14_sout;
wire q6_row_14_bout;
wire q6_row_15_sout;
wire q6_row_15_bout;
wire q6_row_16_sout;
wire q6_row_16_bout;
wire q6_row_17_sout;
wire q6_row_17_bout;
wire q6_row_18_sout;
wire q6_row_18_bout;
wire q6_row_19_sout;
wire q6_row_19_bout;
wire q6_row_20_sout;
wire q6_row_20_bout;


wire q5_row_1_sout;
wire q5_row_1_bout;
wire q5_row_2_sout;
wire q5_row_2_bout;
wire q5_row_3_sout;
wire q5_row_3_bout;
wire q5_row_4_sout;
wire q5_row_4_bout;
wire q5_row_5_sout;
wire q5_row_5_bout;
wire q5_row_6_sout;
wire q5_row_6_bout;
wire q5_row_7_sout;
wire q5_row_7_bout;
wire q5_row_8_sout;
wire q5_row_8_bout;
wire q5_row_9_sout;
wire q5_row_9_bout;
wire q5_row_10_sout;
wire q5_row_10_bout;
wire q5_row_11_sout;
wire q5_row_11_bout;
wire q5_row_12_sout;
wire q5_row_12_bout;
wire q5_row_13_sout;
wire q5_row_13_bout;
wire q5_row_14_sout;
wire q5_row_14_bout;
wire q5_row_15_sout;
wire q5_row_15_bout;
wire q5_row_16_sout;
wire q5_row_16_bout;
wire q5_row_17_sout;
wire q5_row_17_bout;
wire q5_row_18_sout;
wire q5_row_18_bout;
wire q5_row_19_sout;
wire q5_row_19_bout;
wire q5_row_20_sout;
wire q5_row_20_bout;
wire q5_row_21_sout;
wire q5_row_21_bout;
wire q5_row_22_sout;
wire q5_row_22_bout;


wire q4_row_1_sout;
wire q4_row_1_bout;
wire q4_row_2_sout;
wire q4_row_2_bout;
wire q4_row_3_sout;
wire q4_row_3_bout;
wire q4_row_4_sout;
wire q4_row_4_bout;
wire q4_row_5_sout;
wire q4_row_5_bout;
wire q4_row_6_sout;
wire q4_row_6_bout;
wire q4_row_7_sout;
wire q4_row_7_bout;
wire q4_row_8_sout;
wire q4_row_8_bout;
wire q4_row_9_sout;
wire q4_row_9_bout;
wire q4_row_10_sout;
wire q4_row_10_bout;
wire q4_row_11_sout;
wire q4_row_11_bout;
wire q4_row_12_sout;
wire q4_row_12_bout;
wire q4_row_13_sout;
wire q4_row_13_bout;
wire q4_row_14_sout;
wire q4_row_14_bout;
wire q4_row_15_sout;
wire q4_row_15_bout;
wire q4_row_16_sout;
wire q4_row_16_bout;
wire q4_row_17_sout;
wire q4_row_17_bout;
wire q4_row_18_sout;
wire q4_row_18_bout;
wire q4_row_19_sout;
wire q4_row_19_bout;
wire q4_row_20_sout;
wire q4_row_20_bout;
wire q4_row_21_sout;
wire q4_row_21_bout;
wire q4_row_22_sout;
wire q4_row_22_bout;
wire q4_row_23_sout;
wire q4_row_23_bout;
wire q4_row_24_sout;
wire q4_row_24_bout;


wire q3_row_1_sout;
wire q3_row_1_bout;
wire q3_row_2_sout;
wire q3_row_2_bout;
wire q3_row_3_sout;
wire q3_row_3_bout;
wire q3_row_4_sout;
wire q3_row_4_bout;
wire q3_row_5_sout;
wire q3_row_5_bout;
wire q3_row_6_sout;
wire q3_row_6_bout;
wire q3_row_7_sout;
wire q3_row_7_bout;
wire q3_row_8_sout;
wire q3_row_8_bout;
wire q3_row_9_sout;
wire q3_row_9_bout;
wire q3_row_10_sout;
wire q3_row_10_bout;
wire q3_row_11_sout;
wire q3_row_11_bout;
wire q3_row_12_sout;
wire q3_row_12_bout;
wire q3_row_13_sout;
wire q3_row_13_bout;
wire q3_row_14_sout;
wire q3_row_14_bout;
wire q3_row_15_sout;
wire q3_row_15_bout;
wire q3_row_16_sout;
wire q3_row_16_bout;
wire q3_row_17_sout;
wire q3_row_17_bout;
wire q3_row_18_sout;
wire q3_row_18_bout;
wire q3_row_19_sout;
wire q3_row_19_bout;
wire q3_row_20_sout;
wire q3_row_20_bout;
wire q3_row_21_sout;
wire q3_row_21_bout;
wire q3_row_22_sout;
wire q3_row_22_bout;
wire q3_row_23_sout;
wire q3_row_23_bout;
wire q3_row_24_sout;
wire q3_row_24_bout;
wire q3_row_25_sout;
wire q3_row_25_bout;
wire q3_row_26_sout;
wire q3_row_26_bout;


wire q2_row_1_sout;
wire q2_row_1_bout;
wire q2_row_2_sout;
wire q2_row_2_bout;
wire q2_row_3_sout;
wire q2_row_3_bout;
wire q2_row_4_sout;
wire q2_row_4_bout;
wire q2_row_5_sout;
wire q2_row_5_bout;
wire q2_row_6_sout;
wire q2_row_6_bout;
wire q2_row_7_sout;
wire q2_row_7_bout;
wire q2_row_8_sout;
wire q2_row_8_bout;
wire q2_row_9_sout;
wire q2_row_9_bout;
wire q2_row_10_sout;
wire q2_row_10_bout;
wire q2_row_11_sout;
wire q2_row_11_bout;
wire q2_row_12_sout;
wire q2_row_12_bout;
wire q2_row_13_sout;
wire q2_row_13_bout;
wire q2_row_14_sout;
wire q2_row_14_bout;
wire q2_row_15_sout;
wire q2_row_15_bout;
wire q2_row_16_sout;
wire q2_row_16_bout;
wire q2_row_17_sout;
wire q2_row_17_bout;
wire q2_row_18_sout;
wire q2_row_18_bout;
wire q2_row_19_sout;
wire q2_row_19_bout;
wire q2_row_20_sout;
wire q2_row_20_bout;
wire q2_row_21_sout;
wire q2_row_21_bout;
wire q2_row_22_sout;
wire q2_row_22_bout;
wire q2_row_23_sout;
wire q2_row_23_bout;
wire q2_row_24_sout;
wire q2_row_24_bout;
wire q2_row_25_sout;
wire q2_row_25_bout;
wire q2_row_26_sout;
wire q2_row_26_bout;
wire q2_row_27_sout;
wire q2_row_27_bout;
wire q2_row_28_sout;
wire q2_row_28_bout;


wire q1_row_1_sout;
wire q1_row_1_bout;
wire q1_row_2_sout;
wire q1_row_2_bout;
wire q1_row_3_sout;
wire q1_row_3_bout;
wire q1_row_4_sout;
wire q1_row_4_bout;
wire q1_row_5_sout;
wire q1_row_5_bout;
wire q1_row_6_sout;
wire q1_row_6_bout;
wire q1_row_7_sout;
wire q1_row_7_bout;
wire q1_row_8_sout;
wire q1_row_8_bout;
wire q1_row_9_sout;
wire q1_row_9_bout;
wire q1_row_10_sout;
wire q1_row_10_bout;
wire q1_row_11_sout;
wire q1_row_11_bout;
wire q1_row_12_sout;
wire q1_row_12_bout;
wire q1_row_13_sout;
wire q1_row_13_bout;
wire q1_row_14_sout;
wire q1_row_14_bout;
wire q1_row_15_sout;
wire q1_row_15_bout;
wire q1_row_16_sout;
wire q1_row_16_bout;
wire q1_row_17_sout;
wire q1_row_17_bout;
wire q1_row_18_sout;
wire q1_row_18_bout;
wire q1_row_19_sout;
wire q1_row_19_bout;
wire q1_row_20_sout;
wire q1_row_20_bout;
wire q1_row_21_sout;
wire q1_row_21_bout;
wire q1_row_22_sout;
wire q1_row_22_bout;
wire q1_row_23_sout;
wire q1_row_23_bout;
wire q1_row_24_sout;
wire q1_row_24_bout;
wire q1_row_25_sout;
wire q1_row_25_bout;
wire q1_row_26_sout;
wire q1_row_26_bout;
wire q1_row_27_sout;
wire q1_row_27_bout;
wire q1_row_28_sout;
wire q1_row_28_bout;
wire q1_row_29_sout;
wire q1_row_29_bout;
wire q1_row_30_sout;
wire q1_row_30_bout;


wire q0_row_1_sout;
wire q0_row_1_bout;
wire q0_row_2_sout;
wire q0_row_2_bout;
wire q0_row_3_sout;
wire q0_row_3_bout;
wire q0_row_4_sout;
wire q0_row_4_bout;
wire q0_row_5_sout;
wire q0_row_5_bout;
wire q0_row_6_sout;
wire q0_row_6_bout;
wire q0_row_7_sout;
wire q0_row_7_bout;
wire q0_row_8_sout;
wire q0_row_8_bout;
wire q0_row_9_sout;
wire q0_row_9_bout;
wire q0_row_10_sout;
wire q0_row_10_bout;
wire q0_row_11_sout;
wire q0_row_11_bout;
wire q0_row_12_sout;
wire q0_row_12_bout;
wire q0_row_13_sout;
wire q0_row_13_bout;
wire q0_row_14_sout;
wire q0_row_14_bout;
wire q0_row_15_sout;
wire q0_row_15_bout;
wire q0_row_16_sout;
wire q0_row_16_bout;
wire q0_row_17_sout;
wire q0_row_17_bout;
wire q0_row_18_sout;
wire q0_row_18_bout;
wire q0_row_19_sout;
wire q0_row_19_bout;
wire q0_row_20_sout;
wire q0_row_20_bout;
wire q0_row_21_sout;
wire q0_row_21_bout;
wire q0_row_22_sout;
wire q0_row_22_bout;
wire q0_row_23_sout;
wire q0_row_23_bout;
wire q0_row_24_sout;
wire q0_row_24_bout;
wire q0_row_25_sout;
wire q0_row_25_bout;
wire q0_row_26_sout;
wire q0_row_26_bout;
wire q0_row_27_sout;
wire q0_row_27_bout;
wire q0_row_28_sout;
wire q0_row_28_bout;
wire q0_row_29_sout;
wire q0_row_29_bout;
wire q0_row_30_sout;
wire q0_row_30_bout;
wire q0_row_31_sout;
wire q0_row_31_bout;
wire q0_row_32_sout;
wire q0_row_32_bout;





not not_q15 (q[15], q15_row_2_bout);
not not_q14 (q[14], q14_row_4_bout);
not not_q13 (q[13], q13_row_6_bout);
not not_q12 (q[12], q12_row_8_bout);
not not_q11 (q[11], q11_row_10_bout);
not not_q10 (q[10], q10_row_12_bout);
not not_q9 (q[9], q9_row_14_bout);
not not_q8 (q[8], q8_row_16_bout);
not not_q7 (q[7], q7_row_18_bout);
not not_q6 (q[6], q6_row_20_bout);
not not_q5 (q[5], q5_row_22_bout);
not not_q4 (q[4], q4_row_24_bout);
not not_q3 (q[3], q3_row_26_bout);
not not_q2 (q[2], q2_row_28_bout);
not not_q1 (q[1], q1_row_30_bout);
not not_q0 (q[0], q0_row_32_bout);



subtractor_cell q15_row_1(a[30], 1'b1, 1'b0, q[15], q15_row_1_sout, q15_row_1_bout);
subtractor_cell q15_row_2(a[31], 1'b0, q15_row_1_bout, q[15], q15_row_2_sout, q15_row_2_bout);



subtractor_cell q14_row_1(a[28], 1'b1, 1'b0, q[14], q14_row_1_sout, q14_row_1_bout);
subtractor_cell q14_row_2(a[29], 1'b0, q14_row_1_bout, q[14], q14_row_2_sout, q14_row_2_bout);
subtractor_cell q14_row_3(q15_row_1_sout, q[15], q14_row_2_bout, q[14], q14_row_3_sout, q14_row_3_bout);
subtractor_cell q14_row_4(q15_row_2_sout, 1'b0, q14_row_3_bout, q[14], q14_row_4_sout, q14_row_4_bout);



subtractor_cell q13_row_1(a[26], 1'b1, 1'b0, q[13], q13_row_1_sout, q13_row_1_bout);
subtractor_cell q13_row_2(a[27], 1'b0, q13_row_1_bout, q[13], q13_row_2_sout, q13_row_2_bout);
subtractor_cell q13_row_3(q14_row_1_sout, q[14], q13_row_2_bout, q[13], q13_row_3_sout, q13_row_3_bout);
subtractor_cell q13_row_4(q14_row_2_sout, q[15], q13_row_3_bout, q[13], q13_row_4_sout, q13_row_4_bout);
subtractor_cell q13_row_5(q14_row_3_sout, 1'b0, q13_row_4_bout, q[13], q13_row_5_sout, q13_row_5_bout);
subtractor_cell q13_row_6(q14_row_4_sout, 1'b0, q13_row_5_bout, q[13], q13_row_6_sout, q13_row_6_bout);



subtractor_cell q12_row_1(a[24], 1'b1, 1'b0, q[12], q12_row_1_sout, q12_row_1_bout);
subtractor_cell q12_row_2(a[25], 1'b0, q12_row_1_bout, q[12], q12_row_2_sout, q12_row_2_bout);
subtractor_cell q12_row_3(q13_row_1_sout, q[13], q12_row_2_bout, q[12], q12_row_3_sout, q12_row_3_bout);
subtractor_cell q12_row_4(q13_row_2_sout, q[14], q12_row_3_bout, q[12], q12_row_4_sout, q12_row_4_bout);
subtractor_cell q12_row_5(q13_row_3_sout, q[15], q12_row_4_bout, q[12], q12_row_5_sout, q12_row_5_bout);
subtractor_cell q12_row_6(q13_row_4_sout, 1'b0, q12_row_5_bout, q[12], q12_row_6_sout, q12_row_6_bout);
subtractor_cell q12_row_7(q13_row_5_sout, 1'b0, q12_row_6_bout, q[12], q12_row_7_sout, q12_row_7_bout);
subtractor_cell q12_row_8(q13_row_6_sout, 1'b0, q12_row_7_bout, q[12], q12_row_8_sout, q12_row_8_bout);



subtractor_cell q11_row_1(a[22], 1'b1, 1'b0, q[11], q11_row_1_sout, q11_row_1_bout);
subtractor_cell q11_row_2(a[23], 1'b0, q11_row_1_bout, q[11], q11_row_2_sout, q11_row_2_bout);
subtractor_cell q11_row_3(q12_row_1_sout, q[12], q11_row_2_bout, q[11], q11_row_3_sout, q11_row_3_bout);
subtractor_cell q11_row_4(q12_row_2_sout, q[13], q11_row_3_bout, q[11], q11_row_4_sout, q11_row_4_bout);
subtractor_cell q11_row_5(q12_row_3_sout, q[14], q11_row_4_bout, q[11], q11_row_5_sout, q11_row_5_bout);
subtractor_cell q11_row_6(q12_row_4_sout, q[15], q11_row_5_bout, q[11], q11_row_6_sout, q11_row_6_bout);
subtractor_cell q11_row_7(q12_row_5_sout, 1'b0, q11_row_6_bout, q[11], q11_row_7_sout, q11_row_7_bout);
subtractor_cell q11_row_8(q12_row_6_sout, 1'b0, q11_row_7_bout, q[11], q11_row_8_sout, q11_row_8_bout);
subtractor_cell q11_row_9(q12_row_7_sout, 1'b0, q11_row_8_bout, q[11], q11_row_9_sout, q11_row_9_bout);
subtractor_cell q11_row_10(q12_row_8_sout, 1'b0, q11_row_9_bout, q[11], q11_row_10_sout, q11_row_10_bout);



subtractor_cell q10_row_1(a[20], 1'b1, 1'b0, q[10], q10_row_1_sout, q10_row_1_bout);
subtractor_cell q10_row_2(a[21], 1'b0, q10_row_1_bout, q[10], q10_row_2_sout, q10_row_2_bout);
subtractor_cell q10_row_3(q11_row_1_sout, q[11], q10_row_2_bout, q[10], q10_row_3_sout, q10_row_3_bout);
subtractor_cell q10_row_4(q11_row_2_sout, q[12], q10_row_3_bout, q[10], q10_row_4_sout, q10_row_4_bout);
subtractor_cell q10_row_5(q11_row_3_sout, q[13], q10_row_4_bout, q[10], q10_row_5_sout, q10_row_5_bout);
subtractor_cell q10_row_6(q11_row_4_sout, q[14], q10_row_5_bout, q[10], q10_row_6_sout, q10_row_6_bout);
subtractor_cell q10_row_7(q11_row_5_sout, q[15], q10_row_6_bout, q[10], q10_row_7_sout, q10_row_7_bout);
subtractor_cell q10_row_8(q11_row_6_sout, 1'b0, q10_row_7_bout, q[10], q10_row_8_sout, q10_row_8_bout);
subtractor_cell q10_row_9(q11_row_7_sout, 1'b0, q10_row_8_bout, q[10], q10_row_9_sout, q10_row_9_bout);
subtractor_cell q10_row_10(q11_row_8_sout, 1'b0, q10_row_9_bout, q[10], q10_row_10_sout, q10_row_10_bout);
subtractor_cell q10_row_11(q11_row_9_sout, 1'b0, q10_row_10_bout, q[10], q10_row_11_sout, q10_row_11_bout);
subtractor_cell q10_row_12(q11_row_10_sout, 1'b0, q10_row_11_bout, q[10], q10_row_12_sout, q10_row_12_bout);



subtractor_cell q9_row_1(a[18], 1'b1, 1'b0, q[9], q9_row_1_sout, q9_row_1_bout);
subtractor_cell q9_row_2(a[19], 1'b0, q9_row_1_bout, q[9], q9_row_2_sout, q9_row_2_bout);
subtractor_cell q9_row_3(q10_row_1_sout, q[10], q9_row_2_bout, q[9], q9_row_3_sout, q9_row_3_bout);
subtractor_cell q9_row_4(q10_row_2_sout, q[11], q9_row_3_bout, q[9], q9_row_4_sout, q9_row_4_bout);
subtractor_cell q9_row_5(q10_row_3_sout, q[12], q9_row_4_bout, q[9], q9_row_5_sout, q9_row_5_bout);
subtractor_cell q9_row_6(q10_row_4_sout, q[13], q9_row_5_bout, q[9], q9_row_6_sout, q9_row_6_bout);
subtractor_cell q9_row_7(q10_row_5_sout, q[14], q9_row_6_bout, q[9], q9_row_7_sout, q9_row_7_bout);
subtractor_cell q9_row_8(q10_row_6_sout, q[15], q9_row_7_bout, q[9], q9_row_8_sout, q9_row_8_bout);
subtractor_cell q9_row_9(q10_row_7_sout, 1'b0, q9_row_8_bout, q[9], q9_row_9_sout, q9_row_9_bout);
subtractor_cell q9_row_10(q10_row_8_sout, 1'b0, q9_row_9_bout, q[9], q9_row_10_sout, q9_row_10_bout);
subtractor_cell q9_row_11(q10_row_9_sout, 1'b0, q9_row_10_bout, q[9], q9_row_11_sout, q9_row_11_bout);
subtractor_cell q9_row_12(q10_row_10_sout, 1'b0, q9_row_11_bout, q[9], q9_row_12_sout, q9_row_12_bout);
subtractor_cell q9_row_13(q10_row_11_sout, 1'b0, q9_row_12_bout, q[9], q9_row_13_sout, q9_row_13_bout);
subtractor_cell q9_row_14(q10_row_12_sout, 1'b0, q9_row_13_bout, q[9], q9_row_14_sout, q9_row_14_bout);



subtractor_cell q8_row_1(a[16], 1'b1, 1'b0, q[8], q8_row_1_sout, q8_row_1_bout);
subtractor_cell q8_row_2(a[17], 1'b0, q8_row_1_bout, q[8], q8_row_2_sout, q8_row_2_bout);
subtractor_cell q8_row_3(q9_row_1_sout, q[9], q8_row_2_bout, q[8], q8_row_3_sout, q8_row_3_bout);
subtractor_cell q8_row_4(q9_row_2_sout, q[10], q8_row_3_bout, q[8], q8_row_4_sout, q8_row_4_bout);
subtractor_cell q8_row_5(q9_row_3_sout, q[11], q8_row_4_bout, q[8], q8_row_5_sout, q8_row_5_bout);
subtractor_cell q8_row_6(q9_row_4_sout, q[12], q8_row_5_bout, q[8], q8_row_6_sout, q8_row_6_bout);
subtractor_cell q8_row_7(q9_row_5_sout, q[13], q8_row_6_bout, q[8], q8_row_7_sout, q8_row_7_bout);
subtractor_cell q8_row_8(q9_row_6_sout, q[14], q8_row_7_bout, q[8], q8_row_8_sout, q8_row_8_bout);
subtractor_cell q8_row_9(q9_row_7_sout, q[15], q8_row_8_bout, q[8], q8_row_9_sout, q8_row_9_bout);
subtractor_cell q8_row_10(q9_row_8_sout, 1'b0, q8_row_9_bout, q[8], q8_row_10_sout, q8_row_10_bout);
subtractor_cell q8_row_11(q9_row_9_sout, 1'b0, q8_row_10_bout, q[8], q8_row_11_sout, q8_row_11_bout);
subtractor_cell q8_row_12(q9_row_10_sout, 1'b0, q8_row_11_bout, q[8], q8_row_12_sout, q8_row_12_bout);
subtractor_cell q8_row_13(q9_row_11_sout, 1'b0, q8_row_12_bout, q[8], q8_row_13_sout, q8_row_13_bout);
subtractor_cell q8_row_14(q9_row_12_sout, 1'b0, q8_row_13_bout, q[8], q8_row_14_sout, q8_row_14_bout);
subtractor_cell q8_row_15(q9_row_13_sout, 1'b0, q8_row_14_bout, q[8], q8_row_15_sout, q8_row_15_bout);
subtractor_cell q8_row_16(q9_row_14_sout, 1'b0, q8_row_15_bout, q[8], q8_row_16_sout, q8_row_16_bout);



subtractor_cell q7_row_1(a[14], 1'b1, 1'b0, q[7], q7_row_1_sout, q7_row_1_bout);
subtractor_cell q7_row_2(a[15], 1'b0, q7_row_1_bout, q[7], q7_row_2_sout, q7_row_2_bout);
subtractor_cell q7_row_3(q8_row_1_sout, q[8], q7_row_2_bout, q[7], q7_row_3_sout, q7_row_3_bout);
subtractor_cell q7_row_4(q8_row_2_sout, q[9], q7_row_3_bout, q[7], q7_row_4_sout, q7_row_4_bout);
subtractor_cell q7_row_5(q8_row_3_sout, q[10], q7_row_4_bout, q[7], q7_row_5_sout, q7_row_5_bout);
subtractor_cell q7_row_6(q8_row_4_sout, q[11], q7_row_5_bout, q[7], q7_row_6_sout, q7_row_6_bout);
subtractor_cell q7_row_7(q8_row_5_sout, q[12], q7_row_6_bout, q[7], q7_row_7_sout, q7_row_7_bout);
subtractor_cell q7_row_8(q8_row_6_sout, q[13], q7_row_7_bout, q[7], q7_row_8_sout, q7_row_8_bout);
subtractor_cell q7_row_9(q8_row_7_sout, q[14], q7_row_8_bout, q[7], q7_row_9_sout, q7_row_9_bout);
subtractor_cell q7_row_10(q8_row_8_sout, q[15], q7_row_9_bout, q[7], q7_row_10_sout, q7_row_10_bout);
subtractor_cell q7_row_11(q8_row_9_sout, 1'b0, q7_row_10_bout, q[7], q7_row_11_sout, q7_row_11_bout);
subtractor_cell q7_row_12(q8_row_10_sout, 1'b0, q7_row_11_bout, q[7], q7_row_12_sout, q7_row_12_bout);
subtractor_cell q7_row_13(q8_row_11_sout, 1'b0, q7_row_12_bout, q[7], q7_row_13_sout, q7_row_13_bout);
subtractor_cell q7_row_14(q8_row_12_sout, 1'b0, q7_row_13_bout, q[7], q7_row_14_sout, q7_row_14_bout);
subtractor_cell q7_row_15(q8_row_13_sout, 1'b0, q7_row_14_bout, q[7], q7_row_15_sout, q7_row_15_bout);
subtractor_cell q7_row_16(q8_row_14_sout, 1'b0, q7_row_15_bout, q[7], q7_row_16_sout, q7_row_16_bout);
subtractor_cell q7_row_17(q8_row_15_sout, 1'b0, q7_row_16_bout, q[7], q7_row_17_sout, q7_row_17_bout);
subtractor_cell q7_row_18(q8_row_16_sout, 1'b0, q7_row_17_bout, q[7], q7_row_18_sout, q7_row_18_bout);



subtractor_cell q6_row_1(a[12], 1'b1, 1'b0, q[6], q6_row_1_sout, q6_row_1_bout);
subtractor_cell q6_row_2(a[13], 1'b0, q6_row_1_bout, q[6], q6_row_2_sout, q6_row_2_bout);
subtractor_cell q6_row_3(q7_row_1_sout, q[7], q6_row_2_bout, q[6], q6_row_3_sout, q6_row_3_bout);
subtractor_cell q6_row_4(q7_row_2_sout, q[8], q6_row_3_bout, q[6], q6_row_4_sout, q6_row_4_bout);
subtractor_cell q6_row_5(q7_row_3_sout, q[9], q6_row_4_bout, q[6], q6_row_5_sout, q6_row_5_bout);
subtractor_cell q6_row_6(q7_row_4_sout, q[10], q6_row_5_bout, q[6], q6_row_6_sout, q6_row_6_bout);
subtractor_cell q6_row_7(q7_row_5_sout, q[11], q6_row_6_bout, q[6], q6_row_7_sout, q6_row_7_bout);
subtractor_cell q6_row_8(q7_row_6_sout, q[12], q6_row_7_bout, q[6], q6_row_8_sout, q6_row_8_bout);
subtractor_cell q6_row_9(q7_row_7_sout, q[13], q6_row_8_bout, q[6], q6_row_9_sout, q6_row_9_bout);
subtractor_cell q6_row_10(q7_row_8_sout, q[14], q6_row_9_bout, q[6], q6_row_10_sout, q6_row_10_bout);
subtractor_cell q6_row_11(q7_row_9_sout, q[15], q6_row_10_bout, q[6], q6_row_11_sout, q6_row_11_bout);
subtractor_cell q6_row_12(q7_row_10_sout, 1'b0, q6_row_11_bout, q[6], q6_row_12_sout, q6_row_12_bout);
subtractor_cell q6_row_13(q7_row_11_sout, 1'b0, q6_row_12_bout, q[6], q6_row_13_sout, q6_row_13_bout);
subtractor_cell q6_row_14(q7_row_12_sout, 1'b0, q6_row_13_bout, q[6], q6_row_14_sout, q6_row_14_bout);
subtractor_cell q6_row_15(q7_row_13_sout, 1'b0, q6_row_14_bout, q[6], q6_row_15_sout, q6_row_15_bout);
subtractor_cell q6_row_16(q7_row_14_sout, 1'b0, q6_row_15_bout, q[6], q6_row_16_sout, q6_row_16_bout);
subtractor_cell q6_row_17(q7_row_15_sout, 1'b0, q6_row_16_bout, q[6], q6_row_17_sout, q6_row_17_bout);
subtractor_cell q6_row_18(q7_row_16_sout, 1'b0, q6_row_17_bout, q[6], q6_row_18_sout, q6_row_18_bout);
subtractor_cell q6_row_19(q7_row_17_sout, 1'b0, q6_row_18_bout, q[6], q6_row_19_sout, q6_row_19_bout);
subtractor_cell q6_row_20(q7_row_18_sout, 1'b0, q6_row_19_bout, q[6], q6_row_20_sout, q6_row_20_bout);



subtractor_cell q5_row_1(a[10], 1'b1, 1'b0, q[5], q5_row_1_sout, q5_row_1_bout);
subtractor_cell q5_row_2(a[11], 1'b0, q5_row_1_bout, q[5], q5_row_2_sout, q5_row_2_bout);
subtractor_cell q5_row_3(q6_row_1_sout, q[6], q5_row_2_bout, q[5], q5_row_3_sout, q5_row_3_bout);
subtractor_cell q5_row_4(q6_row_2_sout, q[7], q5_row_3_bout, q[5], q5_row_4_sout, q5_row_4_bout);
subtractor_cell q5_row_5(q6_row_3_sout, q[8], q5_row_4_bout, q[5], q5_row_5_sout, q5_row_5_bout);
subtractor_cell q5_row_6(q6_row_4_sout, q[9], q5_row_5_bout, q[5], q5_row_6_sout, q5_row_6_bout);
subtractor_cell q5_row_7(q6_row_5_sout, q[10], q5_row_6_bout, q[5], q5_row_7_sout, q5_row_7_bout);
subtractor_cell q5_row_8(q6_row_6_sout, q[11], q5_row_7_bout, q[5], q5_row_8_sout, q5_row_8_bout);
subtractor_cell q5_row_9(q6_row_7_sout, q[12], q5_row_8_bout, q[5], q5_row_9_sout, q5_row_9_bout);
subtractor_cell q5_row_10(q6_row_8_sout, q[13], q5_row_9_bout, q[5], q5_row_10_sout, q5_row_10_bout);
subtractor_cell q5_row_11(q6_row_9_sout, q[14], q5_row_10_bout, q[5], q5_row_11_sout, q5_row_11_bout);
subtractor_cell q5_row_12(q6_row_10_sout, q[15], q5_row_11_bout, q[5], q5_row_12_sout, q5_row_12_bout);
subtractor_cell q5_row_13(q6_row_11_sout, 1'b0, q5_row_12_bout, q[5], q5_row_13_sout, q5_row_13_bout);
subtractor_cell q5_row_14(q6_row_12_sout, 1'b0, q5_row_13_bout, q[5], q5_row_14_sout, q5_row_14_bout);
subtractor_cell q5_row_15(q6_row_13_sout, 1'b0, q5_row_14_bout, q[5], q5_row_15_sout, q5_row_15_bout);
subtractor_cell q5_row_16(q6_row_14_sout, 1'b0, q5_row_15_bout, q[5], q5_row_16_sout, q5_row_16_bout);
subtractor_cell q5_row_17(q6_row_15_sout, 1'b0, q5_row_16_bout, q[5], q5_row_17_sout, q5_row_17_bout);
subtractor_cell q5_row_18(q6_row_16_sout, 1'b0, q5_row_17_bout, q[5], q5_row_18_sout, q5_row_18_bout);
subtractor_cell q5_row_19(q6_row_17_sout, 1'b0, q5_row_18_bout, q[5], q5_row_19_sout, q5_row_19_bout);
subtractor_cell q5_row_20(q6_row_18_sout, 1'b0, q5_row_19_bout, q[5], q5_row_20_sout, q5_row_20_bout);
subtractor_cell q5_row_21(q6_row_19_sout, 1'b0, q5_row_20_bout, q[5], q5_row_21_sout, q5_row_21_bout);
subtractor_cell q5_row_22(q6_row_20_sout, 1'b0, q5_row_21_bout, q[5], q5_row_22_sout, q5_row_22_bout);



subtractor_cell q4_row_1(a[8], 1'b1, 1'b0, q[4], q4_row_1_sout, q4_row_1_bout);
subtractor_cell q4_row_2(a[9], 1'b0, q4_row_1_bout, q[4], q4_row_2_sout, q4_row_2_bout);
subtractor_cell q4_row_3(q5_row_1_sout, q[5], q4_row_2_bout, q[4], q4_row_3_sout, q4_row_3_bout);
subtractor_cell q4_row_4(q5_row_2_sout, q[6], q4_row_3_bout, q[4], q4_row_4_sout, q4_row_4_bout);
subtractor_cell q4_row_5(q5_row_3_sout, q[7], q4_row_4_bout, q[4], q4_row_5_sout, q4_row_5_bout);
subtractor_cell q4_row_6(q5_row_4_sout, q[8], q4_row_5_bout, q[4], q4_row_6_sout, q4_row_6_bout);
subtractor_cell q4_row_7(q5_row_5_sout, q[9], q4_row_6_bout, q[4], q4_row_7_sout, q4_row_7_bout);
subtractor_cell q4_row_8(q5_row_6_sout, q[10], q4_row_7_bout, q[4], q4_row_8_sout, q4_row_8_bout);
subtractor_cell q4_row_9(q5_row_7_sout, q[11], q4_row_8_bout, q[4], q4_row_9_sout, q4_row_9_bout);
subtractor_cell q4_row_10(q5_row_8_sout, q[12], q4_row_9_bout, q[4], q4_row_10_sout, q4_row_10_bout);
subtractor_cell q4_row_11(q5_row_9_sout, q[13], q4_row_10_bout, q[4], q4_row_11_sout, q4_row_11_bout);
subtractor_cell q4_row_12(q5_row_10_sout, q[14], q4_row_11_bout, q[4], q4_row_12_sout, q4_row_12_bout);
subtractor_cell q4_row_13(q5_row_11_sout, q[15], q4_row_12_bout, q[4], q4_row_13_sout, q4_row_13_bout);
subtractor_cell q4_row_14(q5_row_12_sout, 1'b0, q4_row_13_bout, q[4], q4_row_14_sout, q4_row_14_bout);
subtractor_cell q4_row_15(q5_row_13_sout, 1'b0, q4_row_14_bout, q[4], q4_row_15_sout, q4_row_15_bout);
subtractor_cell q4_row_16(q5_row_14_sout, 1'b0, q4_row_15_bout, q[4], q4_row_16_sout, q4_row_16_bout);
subtractor_cell q4_row_17(q5_row_15_sout, 1'b0, q4_row_16_bout, q[4], q4_row_17_sout, q4_row_17_bout);
subtractor_cell q4_row_18(q5_row_16_sout, 1'b0, q4_row_17_bout, q[4], q4_row_18_sout, q4_row_18_bout);
subtractor_cell q4_row_19(q5_row_17_sout, 1'b0, q4_row_18_bout, q[4], q4_row_19_sout, q4_row_19_bout);
subtractor_cell q4_row_20(q5_row_18_sout, 1'b0, q4_row_19_bout, q[4], q4_row_20_sout, q4_row_20_bout);
subtractor_cell q4_row_21(q5_row_19_sout, 1'b0, q4_row_20_bout, q[4], q4_row_21_sout, q4_row_21_bout);
subtractor_cell q4_row_22(q5_row_20_sout, 1'b0, q4_row_21_bout, q[4], q4_row_22_sout, q4_row_22_bout);
subtractor_cell q4_row_23(q5_row_21_sout, 1'b0, q4_row_22_bout, q[4], q4_row_23_sout, q4_row_23_bout);
subtractor_cell q4_row_24(q5_row_22_sout, 1'b0, q4_row_23_bout, q[4], q4_row_24_sout, q4_row_24_bout);



subtractor_cell q3_row_1(a[6], 1'b1, 1'b0, q[3], q3_row_1_sout, q3_row_1_bout);
subtractor_cell q3_row_2(a[7], 1'b0, q3_row_1_bout, q[3], q3_row_2_sout, q3_row_2_bout);
subtractor_cell q3_row_3(q4_row_1_sout, q[4], q3_row_2_bout, q[3], q3_row_3_sout, q3_row_3_bout);
subtractor_cell q3_row_4(q4_row_2_sout, q[5], q3_row_3_bout, q[3], q3_row_4_sout, q3_row_4_bout);
subtractor_cell q3_row_5(q4_row_3_sout, q[6], q3_row_4_bout, q[3], q3_row_5_sout, q3_row_5_bout);
subtractor_cell q3_row_6(q4_row_4_sout, q[7], q3_row_5_bout, q[3], q3_row_6_sout, q3_row_6_bout);
subtractor_cell q3_row_7(q4_row_5_sout, q[8], q3_row_6_bout, q[3], q3_row_7_sout, q3_row_7_bout);
subtractor_cell q3_row_8(q4_row_6_sout, q[9], q3_row_7_bout, q[3], q3_row_8_sout, q3_row_8_bout);
subtractor_cell q3_row_9(q4_row_7_sout, q[10], q3_row_8_bout, q[3], q3_row_9_sout, q3_row_9_bout);
subtractor_cell q3_row_10(q4_row_8_sout, q[11], q3_row_9_bout, q[3], q3_row_10_sout, q3_row_10_bout);
subtractor_cell q3_row_11(q4_row_9_sout, q[12], q3_row_10_bout, q[3], q3_row_11_sout, q3_row_11_bout);
subtractor_cell q3_row_12(q4_row_10_sout, q[13], q3_row_11_bout, q[3], q3_row_12_sout, q3_row_12_bout);
subtractor_cell q3_row_13(q4_row_11_sout, q[14], q3_row_12_bout, q[3], q3_row_13_sout, q3_row_13_bout);
subtractor_cell q3_row_14(q4_row_12_sout, q[15], q3_row_13_bout, q[3], q3_row_14_sout, q3_row_14_bout);
subtractor_cell q3_row_15(q4_row_13_sout, 1'b0, q3_row_14_bout, q[3], q3_row_15_sout, q3_row_15_bout);
subtractor_cell q3_row_16(q4_row_14_sout, 1'b0, q3_row_15_bout, q[3], q3_row_16_sout, q3_row_16_bout);
subtractor_cell q3_row_17(q4_row_15_sout, 1'b0, q3_row_16_bout, q[3], q3_row_17_sout, q3_row_17_bout);
subtractor_cell q3_row_18(q4_row_16_sout, 1'b0, q3_row_17_bout, q[3], q3_row_18_sout, q3_row_18_bout);
subtractor_cell q3_row_19(q4_row_17_sout, 1'b0, q3_row_18_bout, q[3], q3_row_19_sout, q3_row_19_bout);
subtractor_cell q3_row_20(q4_row_18_sout, 1'b0, q3_row_19_bout, q[3], q3_row_20_sout, q3_row_20_bout);
subtractor_cell q3_row_21(q4_row_19_sout, 1'b0, q3_row_20_bout, q[3], q3_row_21_sout, q3_row_21_bout);
subtractor_cell q3_row_22(q4_row_20_sout, 1'b0, q3_row_21_bout, q[3], q3_row_22_sout, q3_row_22_bout);
subtractor_cell q3_row_23(q4_row_21_sout, 1'b0, q3_row_22_bout, q[3], q3_row_23_sout, q3_row_23_bout);
subtractor_cell q3_row_24(q4_row_22_sout, 1'b0, q3_row_23_bout, q[3], q3_row_24_sout, q3_row_24_bout);
subtractor_cell q3_row_25(q4_row_23_sout, 1'b0, q3_row_24_bout, q[3], q3_row_25_sout, q3_row_25_bout);
subtractor_cell q3_row_26(q4_row_24_sout, 1'b0, q3_row_25_bout, q[3], q3_row_26_sout, q3_row_26_bout);



subtractor_cell q2_row_1(a[4], 1'b1, 1'b0, q[2], q2_row_1_sout, q2_row_1_bout);
subtractor_cell q2_row_2(a[5], 1'b0, q2_row_1_bout, q[2], q2_row_2_sout, q2_row_2_bout);
subtractor_cell q2_row_3(q3_row_1_sout, q[3], q2_row_2_bout, q[2], q2_row_3_sout, q2_row_3_bout);
subtractor_cell q2_row_4(q3_row_2_sout, q[4], q2_row_3_bout, q[2], q2_row_4_sout, q2_row_4_bout);
subtractor_cell q2_row_5(q3_row_3_sout, q[5], q2_row_4_bout, q[2], q2_row_5_sout, q2_row_5_bout);
subtractor_cell q2_row_6(q3_row_4_sout, q[6], q2_row_5_bout, q[2], q2_row_6_sout, q2_row_6_bout);
subtractor_cell q2_row_7(q3_row_5_sout, q[7], q2_row_6_bout, q[2], q2_row_7_sout, q2_row_7_bout);
subtractor_cell q2_row_8(q3_row_6_sout, q[8], q2_row_7_bout, q[2], q2_row_8_sout, q2_row_8_bout);
subtractor_cell q2_row_9(q3_row_7_sout, q[9], q2_row_8_bout, q[2], q2_row_9_sout, q2_row_9_bout);
subtractor_cell q2_row_10(q3_row_8_sout, q[10], q2_row_9_bout, q[2], q2_row_10_sout, q2_row_10_bout);
subtractor_cell q2_row_11(q3_row_9_sout, q[11], q2_row_10_bout, q[2], q2_row_11_sout, q2_row_11_bout);
subtractor_cell q2_row_12(q3_row_10_sout, q[12], q2_row_11_bout, q[2], q2_row_12_sout, q2_row_12_bout);
subtractor_cell q2_row_13(q3_row_11_sout, q[13], q2_row_12_bout, q[2], q2_row_13_sout, q2_row_13_bout);
subtractor_cell q2_row_14(q3_row_12_sout, q[14], q2_row_13_bout, q[2], q2_row_14_sout, q2_row_14_bout);
subtractor_cell q2_row_15(q3_row_13_sout, q[15], q2_row_14_bout, q[2], q2_row_15_sout, q2_row_15_bout);
subtractor_cell q2_row_16(q3_row_14_sout, 1'b0, q2_row_15_bout, q[2], q2_row_16_sout, q2_row_16_bout);
subtractor_cell q2_row_17(q3_row_15_sout, 1'b0, q2_row_16_bout, q[2], q2_row_17_sout, q2_row_17_bout);
subtractor_cell q2_row_18(q3_row_16_sout, 1'b0, q2_row_17_bout, q[2], q2_row_18_sout, q2_row_18_bout);
subtractor_cell q2_row_19(q3_row_17_sout, 1'b0, q2_row_18_bout, q[2], q2_row_19_sout, q2_row_19_bout);
subtractor_cell q2_row_20(q3_row_18_sout, 1'b0, q2_row_19_bout, q[2], q2_row_20_sout, q2_row_20_bout);
subtractor_cell q2_row_21(q3_row_19_sout, 1'b0, q2_row_20_bout, q[2], q2_row_21_sout, q2_row_21_bout);
subtractor_cell q2_row_22(q3_row_20_sout, 1'b0, q2_row_21_bout, q[2], q2_row_22_sout, q2_row_22_bout);
subtractor_cell q2_row_23(q3_row_21_sout, 1'b0, q2_row_22_bout, q[2], q2_row_23_sout, q2_row_23_bout);
subtractor_cell q2_row_24(q3_row_22_sout, 1'b0, q2_row_23_bout, q[2], q2_row_24_sout, q2_row_24_bout);
subtractor_cell q2_row_25(q3_row_23_sout, 1'b0, q2_row_24_bout, q[2], q2_row_25_sout, q2_row_25_bout);
subtractor_cell q2_row_26(q3_row_24_sout, 1'b0, q2_row_25_bout, q[2], q2_row_26_sout, q2_row_26_bout);
subtractor_cell q2_row_27(q3_row_25_sout, 1'b0, q2_row_26_bout, q[2], q2_row_27_sout, q2_row_27_bout);
subtractor_cell q2_row_28(q3_row_26_sout, 1'b0, q2_row_27_bout, q[2], q2_row_28_sout, q2_row_28_bout);



subtractor_cell q1_row_1(a[2], 1'b1, 1'b0, q[1], q1_row_1_sout, q1_row_1_bout);
subtractor_cell q1_row_2(a[3], 1'b0, q1_row_1_bout, q[1], q1_row_2_sout, q1_row_2_bout);
subtractor_cell q1_row_3(q2_row_1_sout, q[2], q1_row_2_bout, q[1], q1_row_3_sout, q1_row_3_bout);
subtractor_cell q1_row_4(q2_row_2_sout, q[3], q1_row_3_bout, q[1], q1_row_4_sout, q1_row_4_bout);
subtractor_cell q1_row_5(q2_row_3_sout, q[4], q1_row_4_bout, q[1], q1_row_5_sout, q1_row_5_bout);
subtractor_cell q1_row_6(q2_row_4_sout, q[5], q1_row_5_bout, q[1], q1_row_6_sout, q1_row_6_bout);
subtractor_cell q1_row_7(q2_row_5_sout, q[6], q1_row_6_bout, q[1], q1_row_7_sout, q1_row_7_bout);
subtractor_cell q1_row_8(q2_row_6_sout, q[7], q1_row_7_bout, q[1], q1_row_8_sout, q1_row_8_bout);
subtractor_cell q1_row_9(q2_row_7_sout, q[8], q1_row_8_bout, q[1], q1_row_9_sout, q1_row_9_bout);
subtractor_cell q1_row_10(q2_row_8_sout, q[9], q1_row_9_bout, q[1], q1_row_10_sout, q1_row_10_bout);
subtractor_cell q1_row_11(q2_row_9_sout, q[10], q1_row_10_bout, q[1], q1_row_11_sout, q1_row_11_bout);
subtractor_cell q1_row_12(q2_row_10_sout, q[11], q1_row_11_bout, q[1], q1_row_12_sout, q1_row_12_bout);
subtractor_cell q1_row_13(q2_row_11_sout, q[12], q1_row_12_bout, q[1], q1_row_13_sout, q1_row_13_bout);
subtractor_cell q1_row_14(q2_row_12_sout, q[13], q1_row_13_bout, q[1], q1_row_14_sout, q1_row_14_bout);
subtractor_cell q1_row_15(q2_row_13_sout, q[14], q1_row_14_bout, q[1], q1_row_15_sout, q1_row_15_bout);
subtractor_cell q1_row_16(q2_row_14_sout, q[15], q1_row_15_bout, q[1], q1_row_16_sout, q1_row_16_bout);
subtractor_cell q1_row_17(q2_row_15_sout, 1'b0, q1_row_16_bout, q[1], q1_row_17_sout, q1_row_17_bout);
subtractor_cell q1_row_18(q2_row_16_sout, 1'b0, q1_row_17_bout, q[1], q1_row_18_sout, q1_row_18_bout);
subtractor_cell q1_row_19(q2_row_17_sout, 1'b0, q1_row_18_bout, q[1], q1_row_19_sout, q1_row_19_bout);
subtractor_cell q1_row_20(q2_row_18_sout, 1'b0, q1_row_19_bout, q[1], q1_row_20_sout, q1_row_20_bout);
subtractor_cell q1_row_21(q2_row_19_sout, 1'b0, q1_row_20_bout, q[1], q1_row_21_sout, q1_row_21_bout);
subtractor_cell q1_row_22(q2_row_20_sout, 1'b0, q1_row_21_bout, q[1], q1_row_22_sout, q1_row_22_bout);
subtractor_cell q1_row_23(q2_row_21_sout, 1'b0, q1_row_22_bout, q[1], q1_row_23_sout, q1_row_23_bout);
subtractor_cell q1_row_24(q2_row_22_sout, 1'b0, q1_row_23_bout, q[1], q1_row_24_sout, q1_row_24_bout);
subtractor_cell q1_row_25(q2_row_23_sout, 1'b0, q1_row_24_bout, q[1], q1_row_25_sout, q1_row_25_bout);
subtractor_cell q1_row_26(q2_row_24_sout, 1'b0, q1_row_25_bout, q[1], q1_row_26_sout, q1_row_26_bout);
subtractor_cell q1_row_27(q2_row_25_sout, 1'b0, q1_row_26_bout, q[1], q1_row_27_sout, q1_row_27_bout);
subtractor_cell q1_row_28(q2_row_26_sout, 1'b0, q1_row_27_bout, q[1], q1_row_28_sout, q1_row_28_bout);
subtractor_cell q1_row_29(q2_row_27_sout, 1'b0, q1_row_28_bout, q[1], q1_row_29_sout, q1_row_29_bout);
subtractor_cell q1_row_30(q2_row_28_sout, 1'b0, q1_row_29_bout, q[1], q1_row_30_sout, q1_row_30_bout);



subtractor_cell q0_row_1(a[0], 1'b1, 1'b0, q[0], q0_row_1_sout, q0_row_1_bout);
subtractor_cell q0_row_2(a[1], 1'b0, q0_row_1_bout, q[0], q0_row_2_sout, q0_row_2_bout);
subtractor_cell q0_row_3(q1_row_1_sout, q[1], q0_row_2_bout, q[0], q0_row_3_sout, q0_row_3_bout);
subtractor_cell q0_row_4(q1_row_2_sout, q[2], q0_row_3_bout, q[0], q0_row_4_sout, q0_row_4_bout);
subtractor_cell q0_row_5(q1_row_3_sout, q[3], q0_row_4_bout, q[0], q0_row_5_sout, q0_row_5_bout);
subtractor_cell q0_row_6(q1_row_4_sout, q[4], q0_row_5_bout, q[0], q0_row_6_sout, q0_row_6_bout);
subtractor_cell q0_row_7(q1_row_5_sout, q[5], q0_row_6_bout, q[0], q0_row_7_sout, q0_row_7_bout);
subtractor_cell q0_row_8(q1_row_6_sout, q[6], q0_row_7_bout, q[0], q0_row_8_sout, q0_row_8_bout);
subtractor_cell q0_row_9(q1_row_7_sout, q[7], q0_row_8_bout, q[0], q0_row_9_sout, q0_row_9_bout);
subtractor_cell q0_row_10(q1_row_8_sout, q[8], q0_row_9_bout, q[0], q0_row_10_sout, q0_row_10_bout);
subtractor_cell q0_row_11(q1_row_9_sout, q[9], q0_row_10_bout, q[0], q0_row_11_sout, q0_row_11_bout);
subtractor_cell q0_row_12(q1_row_10_sout, q[10], q0_row_11_bout, q[0], q0_row_12_sout, q0_row_12_bout);
subtractor_cell q0_row_13(q1_row_11_sout, q[11], q0_row_12_bout, q[0], q0_row_13_sout, q0_row_13_bout);
subtractor_cell q0_row_14(q1_row_12_sout, q[12], q0_row_13_bout, q[0], q0_row_14_sout, q0_row_14_bout);
subtractor_cell q0_row_15(q1_row_13_sout, q[13], q0_row_14_bout, q[0], q0_row_15_sout, q0_row_15_bout);
subtractor_cell q0_row_16(q1_row_14_sout, q[14], q0_row_15_bout, q[0], q0_row_16_sout, q0_row_16_bout);
subtractor_cell q0_row_17(q1_row_15_sout, q[15], q0_row_16_bout, q[0], q0_row_17_sout, q0_row_17_bout);
subtractor_cell q0_row_18(q1_row_16_sout, 1'b0, q0_row_17_bout, q[0], q0_row_18_sout, q0_row_18_bout);
subtractor_cell q0_row_19(q1_row_17_sout, 1'b0, q0_row_18_bout, q[0], q0_row_19_sout, q0_row_19_bout);
subtractor_cell q0_row_20(q1_row_18_sout, 1'b0, q0_row_19_bout, q[0], q0_row_20_sout, q0_row_20_bout);
subtractor_cell q0_row_21(q1_row_19_sout, 1'b0, q0_row_20_bout, q[0], q0_row_21_sout, q0_row_21_bout);
subtractor_cell q0_row_22(q1_row_20_sout, 1'b0, q0_row_21_bout, q[0], q0_row_22_sout, q0_row_22_bout);
subtractor_cell q0_row_23(q1_row_21_sout, 1'b0, q0_row_22_bout, q[0], q0_row_23_sout, q0_row_23_bout);
subtractor_cell q0_row_24(q1_row_22_sout, 1'b0, q0_row_23_bout, q[0], q0_row_24_sout, q0_row_24_bout);
subtractor_cell q0_row_25(q1_row_23_sout, 1'b0, q0_row_24_bout, q[0], q0_row_25_sout, q0_row_25_bout);
subtractor_cell q0_row_26(q1_row_24_sout, 1'b0, q0_row_25_bout, q[0], q0_row_26_sout, q0_row_26_bout);
subtractor_cell q0_row_27(q1_row_25_sout, 1'b0, q0_row_26_bout, q[0], q0_row_27_sout, q0_row_27_bout);
subtractor_cell q0_row_28(q1_row_26_sout, 1'b0, q0_row_27_bout, q[0], q0_row_28_sout, q0_row_28_bout);
subtractor_cell q0_row_29(q1_row_27_sout, 1'b0, q0_row_28_bout, q[0], q0_row_29_sout, q0_row_29_bout);
subtractor_cell q0_row_30(q1_row_28_sout, 1'b0, q0_row_29_bout, q[0], q0_row_30_sout, q0_row_30_bout);
subtractor_cell q0_row_31(q1_row_29_sout, 1'b0, q0_row_30_bout, q[0], q0_row_31_sout, q0_row_31_bout);
subtractor_cell q0_row_32(q1_row_30_sout, 1'b0, q0_row_31_bout, q[0], q0_row_32_sout, q0_row_32_bout);



endmodule

module subtractor_cell(input A,B,bin,sel, output sout,bout);

wire diff,a1_op,a2_op,o1_op;
assign sout=(sel)?diff:A;

xor x1(diff,A,B,bin);
not n1(A_bar,A);
or o1(o1_op,B,bin);
and a1(a1_op,o1_op,A_bar);
and a2(a2_op,B,bin);
or o2(bout,a1_op,a2_op);

endmodule
