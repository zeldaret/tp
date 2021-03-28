lbl_80038128:
/* 80038128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003812C  7C 08 02 A6 */	mflr r0
/* 80038130  90 01 00 14 */	stw r0, 0x14(r1)
/* 80038134  80 03 00 58 */	lwz r0, 0x58(r3)
/* 80038138  90 01 00 08 */	stw r0, 8(r1)
/* 8003813C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80038140  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80038144  38 81 00 08 */	addi r4, r1, 8
/* 80038148  4B FE 16 B1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8003814C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80038150  7C 08 03 A6 */	mtlr r0
/* 80038154  38 21 00 10 */	addi r1, r1, 0x10
/* 80038158  4E 80 00 20 */	blr 
