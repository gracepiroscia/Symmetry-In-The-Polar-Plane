% Author: Grace Piroscia
%
% Script to produce struct nseq, storing all of the number sequences used
% in main.m for plotting

%% Geometric (integer) Sequences:
%% Fibonacci (1,1)
n = 10000; %number of points: caution for wrap-around
FIB_SEQ = ones(n,1);
for i = 3:n
    a = FIB_SEQ(i-2);
    b = FIB_SEQ(i-1);

    c = a + b;
    FIB_SEQ(i) = c;
end
nseq(1).name = "Fibonacci (1,1)";
nseq(1).data = FIB_SEQ;

%% Squares 
SEQ = ones(n,1);
for i = 1:n
   SEQ(i) = i^2;
end
nseq(2).name = "Perfect Squares";
nseq(2).data = SEQ;

%% Tribonacci (0,1,1)
TRIB_SEQ = ones(n,1);
for i = 4:n
    a = TRIB_SEQ(i-3);
    b = TRIB_SEQ(i-2);
    c = TRIB_SEQ(i-1);

    d = a + b + c;
    TRIB_SEQ(i) = d;
end
nseq(3).name = "Tribonacci (0,1,1)";
nseq(3).data = TRIB_SEQ;

%% Star numbers
SEQ = ones(n,1);
for i = 1:n
    SEQ(i) = 6*i*(i-1) + 1;
end
nseq(4).name = "Star Numbers";
nseq(4).data = SEQ;

%% Square Pyramidal numbers 
SEQ = ones(n,1);
for i = 1:n
    SEQ(i) = (i*(i+1)*(2*i+1))/6;
end
nseq(5).name = "Square-Pyramidal Numbers";
nseq(5).data = SEQ;

%% Pell Numbers
SEQ = ones(n,1);
SEQ(1) = 0;
SEQ(2) = 1;
for i = 3:n
    SEQ(i) = 2*SEQ(i-1) + SEQ(i-2);
end
nseq(6).name = "Pell Numbers";
nseq(6).data = SEQ;

%% Arithmetic Sequence
nseq(7).name = "Arithmetic (+1)";
nseq(7).data = 1:10000;

%% Store
save("NumberSequences.mat", 'nseq')