module multiplier(input[7:0]A,
						input [7:0]B,
						output[15:0]out);
						
	wire [7:0]Aout,Aout1,Aout2,Aout3,Aout4,Aout5,Aout6,Aout7;
	wire [7:0]cout0,cout1,cout2,cout3,cout4,cout5,cout6,cout7,cout8;
	wire [7:0] sum0, sum1, sum2 , sum3 , sum4 , sum5 ,sum6,sum7,sum8;
	
	and (Aout[0],A[0],B[0]) ,(Aout[1],A[1],B[0]),(Aout[2],A[2],B[0]),(Aout[3],A[3],B[0]),(Aout[4],A[4],B[0]),(Aout[5],A[5],B[0]),(Aout[6],A[6],B[0]),(Aout[7],A[7],B[0]);
	One_Bit_Full_Adder b00(1'b0,Aout[0],0,sum0[0],cout0[0]);
	One_Bit_Full_Adder b01(1'b0,Aout[1],0,sum0[1],cout0[1]);
	One_Bit_Full_Adder b02(1'b0,Aout[2],0,sum0[2],cout0[2]);
	One_Bit_Full_Adder b03(1'b0,Aout[3],0,sum0[3],cout0[3]);
	One_Bit_Full_Adder b04(1'b0,Aout[4],0,sum0[4],cout0[4]);
	One_Bit_Full_Adder b05(1'b0,Aout[5],0,sum0[5],cout0[5]);
	One_Bit_Full_Adder b06(1'b0,Aout[6],0,sum0[6],cout0[6]);
	One_Bit_Full_Adder b07(1'b0,Aout[7],0,sum0[7],cout0[7]);
	
	and (Aout1[0],A[0],B[1]) ,(Aout1[1],A[1],B[1]),(Aout1[2],A[2],B[1]),(Aout1[3],A[3],B[1]),(Aout1[4],A[4],B[1]),(Aout1[5],A[5],B[1]),(Aout1[6],A[6],B[1]),(Aout1[7],A[7],B[1]);
	One_Bit_Full_Adder b10(sum0[1],Aout1[0],cout0[0],sum1[0],cout1[0]);
	One_Bit_Full_Adder b11(sum0[2],Aout1[1],cout0[1],sum1[1],cout1[1]);
	One_Bit_Full_Adder b12(sum0[3],Aout1[2],cout0[2],sum1[2],cout1[2]);
	One_Bit_Full_Adder b13(sum0[4],Aout1[3],cout0[3],sum1[3],cout1[3]);
	One_Bit_Full_Adder b14(sum0[5],Aout1[4],cout0[4],sum1[4],cout1[4]);
	One_Bit_Full_Adder b15(sum0[6],Aout1[5],cout0[5],sum1[5],cout1[5]);
	One_Bit_Full_Adder b16(sum0[7],Aout1[6],cout0[6],sum1[6],cout1[6]);
	One_Bit_Full_Adder b17(1'b0,Aout1[7],cout0[7],sum1[7],cout1[7]);
	
	
	and (Aout2[0],A[0],B[2]) ,(Aout2[1],A[1],B[2]),(Aout2[2],A[2],B[2]),(Aout2[3],A[3],B[2]),(Aout2[4],A[4],B[2]),(Aout2[5],A[5],B[2]),(Aout2[6],A[6],B[2]),(Aout2[7],A[7],B[2]);
	One_Bit_Full_Adder b20(sum1[1],Aout2[0],cout1[0],sum2[0],cout2[0]);
	One_Bit_Full_Adder b21(sum1[2],Aout2[1],cout1[1],sum2[1],cout2[1]);
	One_Bit_Full_Adder b22(sum1[3],Aout2[2],cout1[2],sum2[2],cout2[2]);
	One_Bit_Full_Adder b23(sum1[4],Aout2[3],cout1[3],sum2[3],cout2[3]);
	One_Bit_Full_Adder b24(sum1[5],Aout2[4],cout1[4],sum2[4],cout2[4]);
	One_Bit_Full_Adder b25(sum1[6],Aout2[5],cout1[5],sum2[5],cout2[5]);
	One_Bit_Full_Adder b26(sum1[7],Aout2[6],cout1[6],sum2[6],cout2[6]);
	One_Bit_Full_Adder b27(1'b0,Aout2[7],cout1[7],sum2[7],cout2[7]);
	
	
	and (Aout3[0],A[0],B[3]) ,(Aout3[1],A[1],B[3]),(Aout3[2],A[2],B[3]),(Aout3[3],A[3],B[3]),(Aout3[4],A[4],B[3]),(Aout3[5],A[5],B[3]),(Aout3[6],A[6],B[3]),(Aout3[7],A[7],B[3]);
	One_Bit_Full_Adder b30(sum2[1],Aout3[0],cout2[0],sum3[0],cout3[0]);
	One_Bit_Full_Adder b31(sum2[2],Aout3[1],cout2[1],sum3[1],cout3[1]);
	One_Bit_Full_Adder b32(sum2[3],Aout3[2],cout2[2],sum3[2],cout3[2]);
	One_Bit_Full_Adder b33(sum2[4],Aout3[3],cout2[3],sum3[3],cout3[3]);
	One_Bit_Full_Adder b34(sum2[5],Aout3[4],cout2[4],sum3[4],cout3[4]);
	One_Bit_Full_Adder b35(sum2[6],Aout3[5],cout2[5],sum3[5],cout3[5]);
	One_Bit_Full_Adder b36(sum2[7],Aout3[6],cout2[6],sum3[6],cout3[6]);
	One_Bit_Full_Adder b37(1'b0,Aout3[7],cout2[7],sum3[7],cout3[7]);
	
	
	and (Aout4[0],A[0],B[4]) ,(Aout4[1],A[1],B[4]),(Aout4[2],A[2],B[4]),(Aout4[3],A[3],B[4]),(Aout4[4],A[4],B[4]),(Aout4[5],A[5],B[4]),(Aout4[6],A[6],B[4]),(Aout4[7],A[7],B[4]);
	One_Bit_Full_Adder b40(sum3[1],Aout4[0],cout3[0],sum4[0],cout4[0]);
	One_Bit_Full_Adder b41(sum3[2],Aout4[1],cout3[1],sum4[1],cout4[1]);
	One_Bit_Full_Adder b42(sum3[3],Aout4[2],cout3[2],sum4[2],cout4[2]);
	One_Bit_Full_Adder b43(sum3[4],Aout4[3],cout3[3],sum4[3],cout4[3]);
	One_Bit_Full_Adder b44(sum3[5],Aout4[4],cout3[4],sum4[4],cout4[4]);
	One_Bit_Full_Adder b45(sum3[6],Aout4[5],cout3[5],sum4[5],cout4[5]);
	One_Bit_Full_Adder b46(sum3[7],Aout4[6],cout3[6],sum4[6],cout4[6]);
	One_Bit_Full_Adder b47(1'b0,Aout4[7],cout3[7],sum4[7],cout4[7]);
	
	and (Aout5[0],A[0],B[5]) ,(Aout5[1],A[1],B[5]),(Aout5[2],A[2],B[5]),(Aout5[3],A[3],B[5]),(Aout5[4],A[4],B[5]),(Aout5[5],A[5],B[5]),(Aout5[6],A[6],B[5]),(Aout5[7],A[7],B[5]);
	One_Bit_Full_Adder b50(sum4[1],Aout5[0],cout4[0],sum5[0],cout5[0]);
	One_Bit_Full_Adder b51(sum4[2],Aout5[1],cout4[1],sum5[1],cout5[1]);
	One_Bit_Full_Adder b52(sum4[3],Aout5[2],cout4[2],sum5[2],cout5[2]);
	One_Bit_Full_Adder b53(sum4[4],Aout5[3],cout4[3],sum5[3],cout5[3]);
	One_Bit_Full_Adder b54(sum4[5],Aout5[4],cout4[4],sum5[4],cout5[4]);
	One_Bit_Full_Adder b55(sum4[6],Aout5[5],cout4[5],sum5[5],cout5[5]);
	One_Bit_Full_Adder b56(sum4[7],Aout5[6],cout4[6],sum5[6],cout5[6]);
	One_Bit_Full_Adder b57(1'b0,Aout5[7],cout4[7],sum5[7],cout5[7]);
	
	and (Aout6[0],A[0],B[6]) ,(Aout6[1],A[1],B[6]),(Aout6[2],A[2],B[6]),(Aout6[3],A[3],B[6]),(Aout6[4],A[4],B[6]),(Aout6[5],A[5],B[6]),(Aout6[6],A[6],B[6]),(Aout6[7],A[7],B[6]);
	One_Bit_Full_Adder b60(sum5[1],Aout6[0],cout5[0],sum6[0],cout6[0]);
	One_Bit_Full_Adder b61(sum5[2],Aout6[1],cout5[1],sum6[1],cout6[1]);
	One_Bit_Full_Adder b62(sum5[3],Aout6[2],cout5[2],sum6[2],cout6[2]);
	One_Bit_Full_Adder b63(sum5[4],Aout6[3],cout5[3],sum6[3],cout6[3]);
	One_Bit_Full_Adder b64(sum5[5],Aout6[4],cout5[4],sum6[4],cout6[4]);
	One_Bit_Full_Adder b65(sum5[6],Aout6[5],cout5[5],sum6[5],cout6[5]);
	One_Bit_Full_Adder b66(sum5[7],Aout6[6],cout5[6],sum6[6],cout6[6]);
	One_Bit_Full_Adder b67(1'b0,Aout6[7],cout5[7],sum6[7],cout6[7]);
	
	and (Aout7[0],A[0],B[7]) ,(Aout7[1],A[1],B[7]),(Aout7[2],A[2],B[7]),(Aout7[3],A[3],B[7]),(Aout7[4],A[4],B[7]),(Aout7[5],A[5],B[7]),(Aout7[6],A[6],B[7]),(Aout7[7],A[7],B[7]);
	One_Bit_Full_Adder b70(sum6[1],Aout7[0],cout6[0],sum7[0],cout7[0]);
	One_Bit_Full_Adder b71(sum6[2],Aout7[1],cout6[1],sum7[1],cout7[1]);
	One_Bit_Full_Adder b72(sum6[3],Aout7[2],cout6[2],sum7[2],cout7[2]);
	One_Bit_Full_Adder b73(sum6[4],Aout7[3],cout6[3],sum7[3],cout7[3]);
	One_Bit_Full_Adder b74(sum6[5],Aout7[4],cout6[4],sum7[4],cout7[4]);
	One_Bit_Full_Adder b75(sum6[6],Aout7[5],cout6[5],sum7[5],cout7[5]);
	One_Bit_Full_Adder b76(sum6[7],Aout7[6],cout6[6],sum7[6],cout7[6]);
	One_Bit_Full_Adder b77(1'b0,Aout7[7],cout6[7],sum7[7],cout7[7]);
	
	
	One_Bit_Full_Adder b80(sum7[1],cout7[0],1'b0,sum8[0],cout8[0]);
	One_Bit_Full_Adder b81(sum7[2],cout7[1],cout8[0],sum8[1],cout8[1]);
	One_Bit_Full_Adder b82(sum7[3],cout7[2],cout8[1],sum8[2],cout8[2]);
	One_Bit_Full_Adder b83(sum7[4],cout7[3],cout8[2],sum8[3],cout8[3]);
	One_Bit_Full_Adder b84(sum7[5],cout7[4],cout8[3],sum8[4],cout8[4]);
	One_Bit_Full_Adder b85(sum7[6],cout7[5],cout8[4],sum8[5],cout8[5]);
	One_Bit_Full_Adder b86(sum7[7],cout7[6],cout8[5],sum8[6],cout8[6]);
	One_Bit_Full_Adder b87(1'b0,cout7[7],cout8[6],sum8[7],cout8[7]);

	
assign out[0]=sum0[0];
assign out[1]=sum1[0];
assign out[2]=sum2[0];
assign out[3]=sum3[0];
assign out[4]=sum4[0];
assign out[5]=sum5[0];
assign out[6]=sum6[0];
assign out[7]=sum7[0];
assign out[8]=sum8[0];
assign out[9]=sum8[1];
assign out[10]=sum8[2];
assign out[11]=sum8[3];
assign out[12]=sum8[4];
assign out[13]=sum8[5];
assign out[14]=sum8[6];
assign out[15]=sum8[7];
							
						
endmodule