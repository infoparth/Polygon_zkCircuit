pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template verifierCircuit () {  

   // Declaration of signals.  

   signal input a;  
   signal input b;  

   //Decleratoin of internal Outpus

   signal c;
   signal d;

   //Decleration of Outputs

   signal output y;

   // Components Gates

   component andgate = AND();
   component orgate = OR();
   component notgate = NOT();

   // Circuit Logic

   andgate.a <== a;
   andgate.b <== b;

   orgate.a <== andgate.out;

   notgate.in <== b;
   orgate.b <== notgate.out;

   // orgate.a <== c;
   // orgate.b <== d;

   y <== orgate.out;

}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

component main = verifierCircuit();