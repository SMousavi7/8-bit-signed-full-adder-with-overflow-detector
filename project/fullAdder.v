module full_Adder(sum, Cout, input_a, input_b, Cin);

	input [7:0]input_a;
	input [7:0]input_b;
	input Cin;
	output [7:0]sum;
	output Cout;

	wire temp_sum0, temp_sum1, temp_sum2, temp_sum3, temp_sum4, temp_sum5, temp_sum6, temp_sum7;
	wire tempSumAndCin0, tempSumAndCin1, tempSumAndCin2, tempSumAndCin3, tempSumAndCin4, tempSumAndCin5, tempSumAndCin6, tempSumAndCin7;
	wire p0, p1, p2, p3, p4, p5, p6, p7;
	wire C1, C2, C3, C4, C5, C6, C7, C8;

	xor(temp_sum0, input_a[0], input_b[0]);
	xor(sum[0], temp_sum0, Cin);
	and(tempSumAndCin0, temp_sum0, Cin);
	and(p0, input_a[0], input_b[0]);
	or(C1, p0, tempSumAndCin0);

	xor(temp_sum1, input_a[1], input_b[1]);
	xor(sum[1], temp_sum1, C1);
	and(tempSumAndCin1, temp_sum1, C1);
	and(p1, input_a[1], input_b[1]);
	or(C2, p1, tempSumAndCin1);


	xor(temp_sum2, input_a[2], input_b[2]);
	xor(sum[2], temp_sum2, C2);
	and(tempSumAndCin2, temp_sum2, C2);
	and(p2, input_a[2], input_b[2]);
	or(C3, p2, tempSumAndCin2);


	xor(temp_sum3, input_a[3], input_b[3]);
	xor(sum[3], temp_sum3, C3);
	and(tempSumAndCin3, temp_sum3, C3);
	and(p3, input_a[3], input_b[3]);
	or(C4, p3, tempSumAndCin3);


	xor(temp_sum4, input_a[4], input_b[4]);
	xor(sum[4], temp_sum4, C4);
	and(tempSumAndCin4, temp_sum4, C4);
	and(p4, input_a[4], input_b[4]);
	or(C5, p4, tempSumAndCin4);


	xor(temp_sum5, input_a[5], input_b[5]);
	xor(sum[5], temp_sum5, C5);
	and(tempSumAndCin5, temp_sum5, C5);
	and(p5, input_a[5], input_b[5]);
	or(C6, p5, tempSumAndCin5);


	xor(temp_sum6, input_a[6], input_b[6]);
	xor(sum[6], temp_sum6, C6);
	and(tempSumAndCin6, temp_sum6, C6);
	and(p6, input_a[6], input_b[6]);
	or(C7, p6, tempSumAndCin6);


	xor(temp_sum7, input_a[7], input_b[7]);
	xor(sum[7], temp_sum7, C7);
	and(tempSumAndCin7, temp_sum7, C7);
	and(p7, input_a[7], input_b[7]);
	or(C8, p7, tempSumAndCin7);

	xor(Cout, C7, C8);//overFlow
endmodule
