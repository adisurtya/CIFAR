(* Created with the Wolfram Language : www.wolfram.com *)
Dispatch[{ff[a_, b_, c_]*ff[d_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   (CA^4*DA)/4, ff[a_, b_, c_]*ff[d_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, b_, c_]*ff[e_, d_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[a_, b_, c_]*ff[e_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, b_, c_]*ff[f_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, b_, c_]*ff[f_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, b_, d_]*ff[c_, e_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, d_]*ff[c_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, b_, d_]*ff[e_, c_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, b_, d_]*ff[e_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, d_]*ff[f_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, d_]*ff[f_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, b_, e_]*ff[c_, d_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, e_]*ff[c_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, b_, e_]*ff[d_, c_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, b_, e_]*ff[d_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, e_]*ff[f_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, e_]*ff[f_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, b_, f_]*ff[c_, d_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, b_, f_]*ff[c_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, b_, f_]*ff[d_, c_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[a_, b_, f_]*ff[d_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, b_, f_]*ff[e_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, b_, f_]*ff[e_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, c_, b_]*ff[d_, e_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[a_, c_, b_]*ff[d_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, c_, b_]*ff[e_, d_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, c_, b_]*ff[e_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, c_, b_]*ff[f_, d_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[a_, c_, b_]*ff[f_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, c_, d_]*ff[b_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, c_, d_]*ff[b_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, c_, d_]*ff[e_, b_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, c_, d_]*ff[e_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, c_, d_]*ff[f_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, c_, d_]*ff[f_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, c_, e_]*ff[b_, d_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[a_, c_, e_]*ff[b_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[a_, c_, e_]*ff[d_, b_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -C4AA - (CA^4*DA)/12, 
  ff[a_, c_, e_]*ff[d_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   C4AA + (CA^4*DA)/12, ff[a_, c_, e_]*ff[f_, b_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[a_, c_, e_]*ff[f_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[a_, c_, f_]*ff[b_, d_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, c_, f_]*ff[b_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, c_, f_]*ff[d_, b_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, c_, f_]*ff[d_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, c_, f_]*ff[e_, b_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, c_, f_]*ff[e_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, b_]*ff[c_, e_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, d_, b_]*ff[c_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, b_]*ff[e_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, b_]*ff[e_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, b_]*ff[f_, c_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, d_, b_]*ff[f_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, c_]*ff[b_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, c_]*ff[b_, f_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, c_]*ff[e_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, c_]*ff[e_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, c_]*ff[f_, b_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, d_, c_]*ff[f_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, e_]*ff[b_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, e_]*ff[b_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, e_]*ff[c_, b_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, d_, e_]*ff[c_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, e_]*ff[f_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, e_]*ff[f_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, f_]*ff[b_, c_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, f_]*ff[b_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, f_]*ff[c_, b_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, d_, f_]*ff[c_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, f_]*ff[e_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, f_]*ff[e_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, e_, b_]*ff[c_, d_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, e_, b_]*ff[c_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, b_]*ff[d_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, b_]*ff[d_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, e_, b_]*ff[f_, c_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, e_, b_]*ff[f_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, c_]*ff[b_, d_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[a_, e_, c_]*ff[b_, f_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[a_, e_, c_]*ff[d_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   C4AA + (CA^4*DA)/12, ff[a_, e_, c_]*ff[d_, f_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -C4AA - (CA^4*DA)/12, 
  ff[a_, e_, c_]*ff[f_, b_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[a_, e_, c_]*ff[f_, d_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[a_, e_, d_]*ff[b_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, e_, d_]*ff[b_, f_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, d_]*ff[c_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, d_]*ff[c_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, e_, d_]*ff[f_, b_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, e_, d_]*ff[f_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, f_]*ff[b_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, e_, f_]*ff[b_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, e_, f_]*ff[c_, b_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[a_, e_, f_]*ff[c_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, e_, f_]*ff[d_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, e_, f_]*ff[d_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, f_, b_]*ff[c_, d_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[a_, f_, b_]*ff[c_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, f_, b_]*ff[d_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, f_, b_]*ff[d_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, f_, b_]*ff[e_, c_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[a_, f_, b_]*ff[e_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, f_, c_]*ff[b_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, f_, c_]*ff[b_, e_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, f_, c_]*ff[d_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, f_, c_]*ff[d_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, f_, c_]*ff[e_, b_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, f_, c_]*ff[e_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, f_, d_]*ff[b_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, f_, d_]*ff[b_, e_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, f_, d_]*ff[c_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, f_, d_]*ff[c_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, f_, d_]*ff[e_, b_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, f_, d_]*ff[e_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, f_, e_]*ff[b_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, f_, e_]*ff[b_, d_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, f_, e_]*ff[c_, b_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, f_, e_]*ff[c_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, f_, e_]*ff[d_, b_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[a_, f_, e_]*ff[d_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, a_, c_]*ff[d_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, a_, c_]*ff[d_, f_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, a_, c_]*ff[e_, d_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, a_, c_]*ff[e_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, a_, c_]*ff[f_, d_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, a_, c_]*ff[f_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, a_, d_]*ff[c_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, a_, d_]*ff[c_, f_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, a_, d_]*ff[e_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, a_, d_]*ff[e_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, a_, d_]*ff[f_, c_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, a_, d_]*ff[f_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, a_, e_]*ff[c_, d_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, a_, e_]*ff[c_, f_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, a_, e_]*ff[d_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, a_, e_]*ff[d_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, a_, e_]*ff[f_, c_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, a_, e_]*ff[f_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, a_, f_]*ff[c_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, a_, f_]*ff[c_, e_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, a_, f_]*ff[d_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, a_, f_]*ff[d_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, a_, f_]*ff[e_, c_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, a_, f_]*ff[e_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, c_, a_]*ff[d_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, c_, a_]*ff[d_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, c_, a_]*ff[e_, d_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, c_, a_]*ff[e_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, c_, a_]*ff[f_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, c_, a_]*ff[f_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, e_, f_]*ff[b_, c_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, f_, e_]*ff[b_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, c_, d_]*ff[e_, a_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, c_, d_]*ff[e_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, c_, d_]*ff[f_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, c_, d_]*ff[f_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, d_, f_]*ff[b_, c_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, f_, d_]*ff[b_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, c_, e_]*ff[d_, a_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, c_, e_]*ff[d_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, c_, e_]*ff[f_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, c_, e_]*ff[f_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, e_]*ff[b_, c_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, d_]*ff[b_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, c_, f_]*ff[d_, a_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, c_, f_]*ff[d_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, c_, f_]*ff[e_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, c_, f_]*ff[e_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, d_, a_]*ff[c_, e_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, d_, a_]*ff[c_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, d_, a_]*ff[e_, c_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, d_, a_]*ff[e_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, d_, a_]*ff[f_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, d_, a_]*ff[f_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, e_, f_]*ff[b_, d_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[a_, f_, e_]*ff[b_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, d_, c_]*ff[e_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, d_, c_]*ff[e_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, d_, c_]*ff[f_, a_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, d_, c_]*ff[f_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, c_, f_]*ff[b_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, f_, c_]*ff[b_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, d_, e_]*ff[c_, a_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, d_, e_]*ff[c_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, d_, e_]*ff[f_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, d_, e_]*ff[f_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, c_, e_]*ff[b_, d_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[a_, e_, c_]*ff[b_, d_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[b_, d_, f_]*ff[c_, a_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -C4AA - (CA^4*DA)/12, 
  ff[b_, d_, f_]*ff[c_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   C4AA + (CA^4*DA)/12, ff[b_, d_, f_]*ff[e_, a_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[b_, d_, f_]*ff[e_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[b_, e_, a_]*ff[c_, d_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, a_]*ff[c_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, e_, a_]*ff[d_, c_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, e_, a_]*ff[d_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, a_]*ff[f_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, a_]*ff[f_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, f_]*ff[b_, e_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, f_, d_]*ff[b_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, c_]*ff[d_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, c_]*ff[d_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, e_, c_]*ff[f_, a_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, e_, c_]*ff[f_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, c_, f_]*ff[b_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, f_, c_]*ff[b_, e_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, d_]*ff[c_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, d_]*ff[c_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, e_, d_]*ff[f_, a_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, e_, d_]*ff[f_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, c_, d_]*ff[b_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, c_]*ff[b_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, e_, f_]*ff[c_, a_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, e_, f_]*ff[c_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, f_]*ff[d_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, f_]*ff[d_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, f_, a_]*ff[c_, d_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, f_, a_]*ff[c_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, f_, a_]*ff[d_, c_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, f_, a_]*ff[d_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, f_, a_]*ff[e_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, f_, a_]*ff[e_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, d_, e_]*ff[b_, f_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, e_, d_]*ff[b_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, f_, c_]*ff[d_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, f_, c_]*ff[d_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, f_, c_]*ff[e_, a_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, f_, c_]*ff[e_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, c_, e_]*ff[b_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[a_, e_, c_]*ff[b_, f_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[b_, f_, d_]*ff[c_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   C4AA + (CA^4*DA)/12, ff[b_, f_, d_]*ff[c_, e_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -C4AA - (CA^4*DA)/12, 
  ff[b_, f_, d_]*ff[e_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[b_, f_, d_]*ff[e_, c_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[a_, c_, d_]*ff[b_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, c_]*ff[b_, f_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, f_, e_]*ff[c_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, f_, e_]*ff[c_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, f_, e_]*ff[d_, a_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, f_, e_]*ff[d_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, a_, b_]*ff[d_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, a_, b_]*ff[d_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, a_, b_]*ff[e_, d_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[c_, a_, b_]*ff[e_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, a_, b_]*ff[f_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, a_, b_]*ff[f_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, e_, f_]*ff[c_, a_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, f_, e_]*ff[c_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, a_, d_]*ff[e_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, a_, d_]*ff[e_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, a_, d_]*ff[f_, b_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, a_, d_]*ff[f_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, d_, f_]*ff[c_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[b_, f_, d_]*ff[c_, a_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[c_, a_, e_]*ff[d_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   C4AA + (CA^4*DA)/12, ff[c_, a_, e_]*ff[d_, f_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -C4AA - (CA^4*DA)/12, 
  ff[c_, a_, e_]*ff[f_, b_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[c_, a_, e_]*ff[f_, d_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[b_, d_, e_]*ff[c_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, e_, d_]*ff[c_, a_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, a_, f_]*ff[d_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, a_, f_]*ff[d_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, a_, f_]*ff[e_, b_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, a_, f_]*ff[e_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, b_, a_]*ff[d_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, b_, a_]*ff[d_, f_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, b_, a_]*ff[e_, d_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, b_, a_]*ff[e_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, b_, a_]*ff[f_, d_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[c_, b_, a_]*ff[f_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, e_, f_]*ff[c_, b_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, f_, e_]*ff[c_, b_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, b_, d_]*ff[e_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, b_, d_]*ff[e_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, b_, d_]*ff[f_, a_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[c_, b_, d_]*ff[f_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, d_, f_]*ff[c_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, f_, d_]*ff[c_, b_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, b_, e_]*ff[d_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, b_, e_]*ff[d_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, b_, e_]*ff[f_, a_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, b_, e_]*ff[f_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, e_]*ff[c_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, e_, d_]*ff[c_, b_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, b_, f_]*ff[d_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, b_, f_]*ff[d_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, b_, f_]*ff[e_, a_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, b_, f_]*ff[e_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, f_]*ff[c_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, f_, e_]*ff[c_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, d_, a_]*ff[e_, b_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, d_, a_]*ff[e_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, d_, a_]*ff[f_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, d_, a_]*ff[f_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, e_, f_]*ff[c_, d_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, f_, e_]*ff[c_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, d_, b_]*ff[e_, a_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[c_, d_, b_]*ff[e_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, d_, b_]*ff[f_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, d_, b_]*ff[f_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, b_, f_]*ff[c_, d_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, f_, b_]*ff[c_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, a_, f_]*ff[c_, d_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, f_, a_]*ff[c_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, d_, e_]*ff[f_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, d_, e_]*ff[f_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, b_, e_]*ff[c_, d_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, b_]*ff[c_, d_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, a_, e_]*ff[c_, d_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, e_, a_]*ff[c_, d_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, d_, f_]*ff[e_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, d_, f_]*ff[e_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, d_, f_]*ff[c_, e_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[b_, f_, d_]*ff[c_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[c_, e_, a_]*ff[d_, b_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -C4AA - (CA^4*DA)/12, 
  ff[c_, e_, a_]*ff[d_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   C4AA + (CA^4*DA)/12, ff[c_, e_, a_]*ff[f_, b_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[c_, e_, a_]*ff[f_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[a_, d_, f_]*ff[c_, e_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, f_, d_]*ff[c_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, e_, b_]*ff[d_, a_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, e_, b_]*ff[d_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, e_, b_]*ff[f_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, e_, b_]*ff[f_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, b_, f_]*ff[c_, e_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[a_, f_, b_]*ff[c_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, a_, f_]*ff[c_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, f_, a_]*ff[c_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, e_, d_]*ff[f_, a_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[c_, e_, d_]*ff[f_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, b_, d_]*ff[c_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, b_]*ff[c_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, a_, d_]*ff[c_, e_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, d_, a_]*ff[c_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, e_, f_]*ff[d_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, e_, f_]*ff[d_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, d_, e_]*ff[c_, f_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, d_]*ff[c_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, f_, a_]*ff[d_, b_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, f_, a_]*ff[d_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, f_, a_]*ff[e_, b_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, f_, a_]*ff[e_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, e_]*ff[c_, f_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, d_]*ff[c_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, f_, b_]*ff[d_, a_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, f_, b_]*ff[d_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, f_, b_]*ff[e_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, f_, b_]*ff[e_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, b_, e_]*ff[c_, f_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, e_, b_]*ff[c_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, a_, e_]*ff[c_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, a_]*ff[c_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, f_, d_]*ff[e_, a_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, f_, d_]*ff[e_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, d_]*ff[c_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, b_]*ff[c_, f_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, a_, d_]*ff[c_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, d_, a_]*ff[c_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, f_, e_]*ff[d_, a_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, f_, e_]*ff[d_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, e_, f_]*ff[d_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, f_, e_]*ff[d_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, a_, b_]*ff[e_, c_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, a_, b_]*ff[e_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, a_, b_]*ff[f_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, a_, b_]*ff[f_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, e_, f_]*ff[d_, a_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, f_, e_]*ff[d_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, a_, c_]*ff[e_, b_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, a_, c_]*ff[e_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, a_, c_]*ff[f_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, a_, c_]*ff[f_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, c_, f_]*ff[d_, a_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, f_, c_]*ff[d_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, b_, f_]*ff[d_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, f_, b_]*ff[d_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, a_, e_]*ff[f_, b_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, a_, e_]*ff[f_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, c_, e_]*ff[d_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, e_, c_]*ff[d_, a_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, b_, e_]*ff[d_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, e_, b_]*ff[d_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, a_, f_]*ff[e_, b_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, a_, f_]*ff[e_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, e_, f_]*ff[d_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, f_, e_]*ff[d_, b_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, b_, a_]*ff[e_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, b_, a_]*ff[e_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, b_, a_]*ff[f_, c_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, b_, a_]*ff[f_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, f_]*ff[d_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, f_, e_]*ff[d_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[d_, b_, c_]*ff[e_, a_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[d_, b_, c_]*ff[e_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[d_, b_, c_]*ff[f_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[d_, b_, c_]*ff[f_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, c_, f_]*ff[d_, b_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, f_, c_]*ff[d_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, a_, f_]*ff[d_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, f_, a_]*ff[d_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, b_, e_]*ff[f_, a_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, b_, e_]*ff[f_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, c_, e_]*ff[d_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[a_, e_, c_]*ff[d_, b_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[c_, a_, e_]*ff[d_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   C4AA + (CA^4*DA)/12, ff[c_, e_, a_]*ff[d_, b_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -C4AA - (CA^4*DA)/12, 
  ff[d_, b_, f_]*ff[e_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[d_, b_, f_]*ff[e_, c_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[b_, e_, f_]*ff[d_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, f_, e_]*ff[d_, c_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, c_, a_]*ff[e_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, c_, a_]*ff[e_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, c_, a_]*ff[f_, b_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, c_, a_]*ff[f_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, f_]*ff[d_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, f_, e_]*ff[d_, c_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[d_, c_, b_]*ff[e_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[d_, c_, b_]*ff[e_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[d_, c_, b_]*ff[f_, a_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[d_, c_, b_]*ff[f_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, b_, f_]*ff[d_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, f_, b_]*ff[d_, c_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, a_, f_]*ff[d_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, f_, a_]*ff[d_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[d_, c_, e_]*ff[f_, a_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[d_, c_, e_]*ff[f_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, b_, e_]*ff[d_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, e_, b_]*ff[d_, c_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, a_, e_]*ff[d_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, a_]*ff[d_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, c_, f_]*ff[e_, a_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, c_, f_]*ff[e_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, c_, f_]*ff[d_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, f_, c_]*ff[d_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, b_, f_]*ff[d_, e_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, f_, b_]*ff[d_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, e_, a_]*ff[f_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, e_, a_]*ff[f_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, c_, f_]*ff[d_, e_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, f_, c_]*ff[d_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, a_, f_]*ff[d_, e_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, f_, a_]*ff[d_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, e_, b_]*ff[f_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, e_, b_]*ff[f_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, b_, f_]*ff[d_, e_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, f_, b_]*ff[d_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, a_, f_]*ff[d_, e_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, f_, a_]*ff[d_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[d_, e_, c_]*ff[f_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[d_, e_, c_]*ff[f_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, b_, c_]*ff[d_, e_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, c_, b_]*ff[d_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, a_, c_]*ff[d_, e_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, c_, a_]*ff[d_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, a_, b_]*ff[d_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, b_, a_]*ff[d_, e_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, c_, e_]*ff[d_, f_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, c_]*ff[d_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, b_, e_]*ff[d_, f_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, e_, b_]*ff[d_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, f_, a_]*ff[e_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, f_, a_]*ff[e_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, c_, e_]*ff[d_, f_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[a_, e_, c_]*ff[d_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[c_, a_, e_]*ff[d_, f_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -C4AA - (CA^4*DA)/12, 
  ff[c_, e_, a_]*ff[d_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   C4AA + (CA^4*DA)/12, ff[d_, f_, b_]*ff[e_, a_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[d_, f_, b_]*ff[e_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[a_, b_, e_]*ff[d_, f_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, b_]*ff[d_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, a_, e_]*ff[d_, f_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, e_, a_]*ff[d_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, f_, c_]*ff[e_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, f_, c_]*ff[e_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, b_, c_]*ff[d_, f_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[a_, c_, b_]*ff[d_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, a_, c_]*ff[d_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, c_, a_]*ff[d_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, a_, b_]*ff[d_, f_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[c_, b_, a_]*ff[d_, f_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, d_, f_]*ff[e_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, f_, d_]*ff[e_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, c_, f_]*ff[e_, a_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, f_, c_]*ff[e_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, a_, b_]*ff[f_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, a_, b_]*ff[f_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, d_, f_]*ff[e_, a_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[b_, f_, d_]*ff[e_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[d_, b_, f_]*ff[e_, a_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -C4AA - (CA^4*DA)/12, 
  ff[d_, f_, b_]*ff[e_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   C4AA + (CA^4*DA)/12, ff[e_, a_, c_]*ff[f_, b_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[e_, a_, c_]*ff[f_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[b_, c_, f_]*ff[e_, a_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, f_, c_]*ff[e_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, b_, f_]*ff[e_, a_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, f_, b_]*ff[e_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, a_, d_]*ff[f_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, a_, d_]*ff[f_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, c_, d_]*ff[e_, a_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, d_, c_]*ff[e_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, b_, d_]*ff[e_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, d_, b_]*ff[e_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[d_, b_, c_]*ff[e_, a_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[d_, c_, b_]*ff[e_, a_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, d_, f_]*ff[e_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, f_, d_]*ff[e_, b_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, c_, f_]*ff[e_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, f_, c_]*ff[e_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[e_, b_, a_]*ff[f_, c_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[e_, b_, a_]*ff[f_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, f_]*ff[e_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, f_, d_]*ff[e_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, a_, f_]*ff[e_, b_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, f_, a_]*ff[e_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, b_, c_]*ff[f_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, b_, c_]*ff[f_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, c_, f_]*ff[e_, b_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, f_, c_]*ff[e_, b_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, a_, f_]*ff[e_, b_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, f_, a_]*ff[e_, b_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, b_, d_]*ff[f_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, b_, d_]*ff[f_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, c_, d_]*ff[e_, b_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, d_, c_]*ff[e_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, a_, d_]*ff[e_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, d_, a_]*ff[e_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, a_, c_]*ff[e_, b_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, c_, a_]*ff[e_, b_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, d_, f_]*ff[e_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[b_, f_, d_]*ff[e_, c_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[d_, b_, f_]*ff[e_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   C4AA + (CA^4*DA)/12, ff[d_, f_, b_]*ff[e_, c_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -C4AA - (CA^4*DA)/12, 
  ff[e_, c_, a_]*ff[f_, b_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[e_, c_, a_]*ff[f_, d_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[a_, d_, f_]*ff[e_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, f_, d_]*ff[e_, c_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, a_, f_]*ff[e_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, f_, a_]*ff[e_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[e_, c_, b_]*ff[f_, a_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[e_, c_, b_]*ff[f_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, f_]*ff[e_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, f_, b_]*ff[e_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, a_, f_]*ff[e_, c_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, f_, a_]*ff[e_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[e_, c_, d_]*ff[f_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[e_, c_, d_]*ff[f_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, b_, d_]*ff[e_, c_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[a_, d_, b_]*ff[e_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, a_, d_]*ff[e_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, d_, a_]*ff[e_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, a_, b_]*ff[e_, c_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, b_, a_]*ff[e_, c_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, c_, f_]*ff[e_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, f_, c_]*ff[e_, d_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, b_, f_]*ff[e_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, f_, b_]*ff[e_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[e_, d_, a_]*ff[f_, b_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[e_, d_, a_]*ff[f_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, c_, f_]*ff[e_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, f_, c_]*ff[e_, d_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, a_, f_]*ff[e_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, f_, a_]*ff[e_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[e_, d_, b_]*ff[f_, a_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[e_, d_, b_]*ff[f_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, f_]*ff[e_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, f_, b_]*ff[e_, d_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, a_, f_]*ff[e_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, f_, a_]*ff[e_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[e_, d_, c_]*ff[f_, a_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[e_, d_, c_]*ff[f_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, b_, c_]*ff[e_, d_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, c_, b_]*ff[e_, d_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, a_, c_]*ff[e_, d_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, c_, a_]*ff[e_, d_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, a_, b_]*ff[e_, d_, f_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[c_, b_, a_]*ff[e_, d_, f_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, c_, d_]*ff[e_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, d_, c_]*ff[e_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, b_, d_]*ff[e_, f_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[c_, d_, b_]*ff[e_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[d_, b_, c_]*ff[e_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[d_, c_, b_]*ff[e_, f_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, c_, d_]*ff[e_, f_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, c_]*ff[e_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, a_, d_]*ff[e_, f_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, d_, a_]*ff[e_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, a_, c_]*ff[e_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, c_, a_]*ff[e_, f_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, b_, d_]*ff[e_, f_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, b_]*ff[e_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, a_, d_]*ff[e_, f_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, d_, a_]*ff[e_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, a_, b_]*ff[e_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, b_, a_]*ff[e_, f_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, b_, c_]*ff[e_, f_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, c_, b_]*ff[e_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, a_, c_]*ff[e_, f_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, c_, a_]*ff[e_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, a_, b_]*ff[e_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, b_, a_]*ff[e_, f_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, d_, e_]*ff[f_, a_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, e_, d_]*ff[f_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[d_, c_, e_]*ff[f_, a_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[d_, e_, c_]*ff[f_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[e_, c_, d_]*ff[f_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[e_, d_, c_]*ff[f_, a_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, d_, e_]*ff[f_, a_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, d_]*ff[f_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, b_, e_]*ff[f_, a_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, e_, b_]*ff[f_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, b_, d_]*ff[f_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, d_, b_]*ff[f_, a_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, c_, e_]*ff[f_, a_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, c_]*ff[f_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, b_, e_]*ff[f_, a_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, e_, b_]*ff[f_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, b_, c_]*ff[f_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, c_, b_]*ff[f_, a_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, c_, d_]*ff[f_, a_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, d_, c_]*ff[f_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, b_, d_]*ff[f_, a_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[c_, d_, b_]*ff[f_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[d_, b_, c_]*ff[f_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[d_, c_, b_]*ff[f_, a_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, d_, e_]*ff[f_, b_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[c_, e_, d_]*ff[f_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[d_, c_, e_]*ff[f_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[d_, e_, c_]*ff[f_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[e_, c_, d_]*ff[f_, b_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[e_, d_, c_]*ff[f_, b_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, d_, e_]*ff[f_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, d_]*ff[f_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, a_, e_]*ff[f_, b_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, e_, a_]*ff[f_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, a_, d_]*ff[f_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, d_, a_]*ff[f_, b_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, c_, e_]*ff[f_, b_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[a_, e_, c_]*ff[f_, b_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[c_, a_, e_]*ff[f_, b_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -C4AA - (CA^4*DA)/12, 
  ff[c_, e_, a_]*ff[f_, b_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   C4AA + (CA^4*DA)/12, ff[e_, a_, c_]*ff[f_, b_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[e_, c_, a_]*ff[f_, b_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[a_, c_, d_]*ff[f_, b_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, c_]*ff[f_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[c_, a_, d_]*ff[f_, b_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[c_, d_, a_]*ff[f_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, a_, c_]*ff[f_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, c_, a_]*ff[f_, b_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, d_, e_]*ff[f_, c_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, e_, d_]*ff[f_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, b_, e_]*ff[f_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, e_, b_]*ff[f_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[e_, b_, d_]*ff[f_, c_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[e_, d_, b_]*ff[f_, c_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, e_]*ff[f_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, e_, d_]*ff[f_, c_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, a_, e_]*ff[f_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, e_, a_]*ff[f_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[e_, a_, d_]*ff[f_, c_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[e_, d_, a_]*ff[f_, c_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, e_]*ff[f_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, e_, b_]*ff[f_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, a_, e_]*ff[f_, c_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, e_, a_]*ff[f_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, a_, b_]*ff[f_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[e_, b_, a_]*ff[f_, c_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, b_, d_]*ff[f_, c_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, d_, b_]*ff[f_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, a_, d_]*ff[f_, c_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, d_, a_]*ff[f_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, a_, b_]*ff[f_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[d_, b_, a_]*ff[f_, c_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[b_, c_, e_]*ff[f_, d_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[b_, e_, c_]*ff[f_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, b_, e_]*ff[f_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, e_, b_]*ff[f_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[e_, b_, c_]*ff[f_, d_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[e_, c_, b_]*ff[f_, d_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, c_, e_]*ff[f_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[a_, e_, c_]*ff[f_, d_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[c_, a_, e_]*ff[f_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   C4AA + (CA^4*DA)/12, ff[c_, e_, a_]*ff[f_, d_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -C4AA - (CA^4*DA)/12, 
  ff[e_, a_, c_]*ff[f_, d_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -C4AA - (CA^4*DA)/12, ff[e_, c_, a_]*ff[f_, d_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> C4AA + (CA^4*DA)/12, 
  ff[a_, b_, e_]*ff[f_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, e_, b_]*ff[f_, d_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, a_, e_]*ff[f_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, e_, a_]*ff[f_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[e_, a_, b_]*ff[f_, d_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[e_, b_, a_]*ff[f_, d_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, c_]*ff[f_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, c_, b_]*ff[f_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, a_, c_]*ff[f_, d_, e_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, c_, a_]*ff[f_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, a_, b_]*ff[f_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, b_, a_]*ff[f_, d_, e_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[b_, c_, d_]*ff[f_, e_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[b_, d_, c_]*ff[f_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, b_, d_]*ff[f_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[c_, d_, b_]*ff[f_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[d_, b_, c_]*ff[f_, e_, a_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[d_, c_, b_]*ff[f_, e_, a_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[a_, c_, d_]*ff[f_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, c_]*ff[f_, e_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, a_, d_]*ff[f_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[c_, d_, a_]*ff[f_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, a_, c_]*ff[f_, e_, b_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, c_, a_]*ff[f_, e_, b_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, d_]*ff[f_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[a_, d_, b_]*ff[f_, e_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, a_, d_]*ff[f_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[b_, d_, a_]*ff[f_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/8*(CA^4*DA), ff[d_, a_, b_]*ff[f_, e_, c_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/8*(CA^4*DA), 
  ff[d_, b_, a_]*ff[f_, e_, c_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/8, 
  ff[a_, b_, c_]*ff[f_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[a_, c_, b_]*ff[f_, e_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, a_, c_]*ff[f_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4, 
  ff[b_, c_, a_]*ff[f_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> 
   -1/4*(CA^4*DA), ff[c_, a_, b_]*ff[f_, e_, d_]*
    FF[{a_, b_, c_, d_, e_, f_}] -> -1/4*(CA^4*DA), 
  ff[c_, b_, a_]*ff[f_, e_, d_]*FF[{a_, b_, c_, d_, e_, f_}] -> (CA^4*DA)/4}]
