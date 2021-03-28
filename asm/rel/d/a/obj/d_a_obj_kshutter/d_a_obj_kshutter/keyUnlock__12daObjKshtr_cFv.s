lbl_80C48B84:
/* 80C48B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C48B88  7C 08 02 A6 */	mflr r0
/* 80C48B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C48B90  80 03 06 14 */	lwz r0, 0x614(r3)
/* 80C48B94  90 01 00 08 */	stw r0, 8(r1)
/* 80C48B98  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C48B9C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C48BA0  38 81 00 08 */	addi r4, r1, 8
/* 80C48BA4  4B 3D 0C 54 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C48BA8  28 03 00 00 */	cmplwi r3, 0
/* 80C48BAC  41 82 00 18 */	beq lbl_80C48BC4
/* 80C48BB0  88 03 2C A4 */	lbz r0, 0x2ca4(r3)
/* 80C48BB4  28 00 00 03 */	cmplwi r0, 3
/* 80C48BB8  40 82 00 0C */	bne lbl_80C48BC4
/* 80C48BBC  38 60 00 01 */	li r3, 1
/* 80C48BC0  48 00 00 08 */	b lbl_80C48BC8
lbl_80C48BC4:
/* 80C48BC4  38 60 00 00 */	li r3, 0
lbl_80C48BC8:
/* 80C48BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C48BCC  7C 08 03 A6 */	mtlr r0
/* 80C48BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C48BD4  4E 80 00 20 */	blr 
