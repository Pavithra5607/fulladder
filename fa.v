module full_adder_gate(input A, B, Cin, output S, Cout);
  wire w1, w2, w3, w4;
  xor (w1, A, B);
  xor (S, w1, Cin);
  and (w2, A, B);
  and (w3, B, Cin);
  and (w4, Cin, A);
  or   (Cout, w2, w3, w4);
  
endmodule