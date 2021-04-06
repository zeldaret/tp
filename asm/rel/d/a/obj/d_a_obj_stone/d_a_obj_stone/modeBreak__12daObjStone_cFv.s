lbl_80CEC180:
/* 80CEC180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEC184  7C 08 02 A6 */	mflr r0
/* 80CEC188  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEC18C  80 83 09 0C */	lwz r4, 0x90c(r3)
/* 80CEC190  38 04 00 01 */	addi r0, r4, 1
/* 80CEC194  90 03 09 0C */	stw r0, 0x90c(r3)
/* 80CEC198  4B 32 DA E5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80CEC19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEC1A0  7C 08 03 A6 */	mtlr r0
/* 80CEC1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEC1A8  4E 80 00 20 */	blr 
