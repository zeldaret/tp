lbl_80023110:
/* 80023110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023114  7C 08 02 A6 */	mflr r0
/* 80023118  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002311C  4B FF FF 7D */	bl fpcNdRq_ReChangeNode__FUisPv
/* 80023120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023124  7C 08 03 A6 */	mtlr r0
/* 80023128  38 21 00 10 */	addi r1, r1, 0x10
/* 8002312C  4E 80 00 20 */	blr 
