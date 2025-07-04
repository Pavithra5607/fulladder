module test_full_adder_gate;
  reg A, B, Cin;
  wire S, Cout;
  full_adder_gate uut (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
  initial begin;
$dumpfile("full_adder_gate.vcd");
        $dumpvars(0, test_full_adder_gate);

        $display("A B Cin | S Cout");
        $display("-----------------");
        $monitor("%b %b %b | %b %b", A, B, Cin, S, Cout);
    
        A = 0; B = 0; Cin = 0; #10
        A = 0; B = 0; Cin = 1; #10
        A = 0; B = 1; Cin = 0; #10
        A = 0; B = 1; Cin = 1; #10
        A = 1; B = 0; Cin = 0; #10
        A = 1; B = 0; Cin = 1; #10
        A = 1; B = 1; Cin = 0; #10
        A = 1; B = 1; Cin = 1; #10
    
        $finish;
    end 
endmodule