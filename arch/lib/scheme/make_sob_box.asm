
 MAKE_SOB_BOX:
  PUSH(FP);
  MOV(FP, SP);
  PUSH(IMM(2));
  CALL(MALLOC);
  DROP(1);
  MOV(INDD(R0, 0), T_BOX);
  MOV(INDD(R0, 1), FPARG(0));
  POP(FP);
  RETURN;
