// Gets Numerator, Denumerator and a T_INTEGER. Performs a multiplication and puts the result in R0,R1
MULT:
  PUSH(FP);
  MOV(FP, SP);
  PUSH(R2);
  PUSH(R3);
  MOV(R0, FPARG(0));
  MOV(R1, FPARG(1));
  MOV(R2, FPARG(2));
  MOV(R3, INDD(R2, 2));
  MOV(R2, INDD(R2, 1));
  MUL(R0, R2);
  MUL(R1, R3);
  MOV(R2, R0);
  PUSH(R2);
  PUSH(R1);
  CALL(REDUCT);
  DROP(2);
  POP(R3);
  POP(R2);
  POP(FP);
  RETURN;