lbl_80CE77F8:
/* 80CE77F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE77FC  7C 08 02 A6 */	mflr r0
/* 80CE7800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7804  88 03 0B 0E */	lbz r0, 0xb0e(r3)
/* 80CE7808  28 00 00 02 */	cmplwi r0, 2
/* 80CE780C  40 82 00 1C */	bne lbl_80CE7828
/* 80CE7810  80 03 0B 04 */	lwz r0, 0xb04(r3)
/* 80CE7814  90 01 00 08 */	stw r0, 8(r1)
/* 80CE7818  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80CE781C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80CE7820  38 81 00 08 */	addi r4, r1, 8
/* 80CE7824  4B 33 1F D5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
lbl_80CE7828:
/* 80CE7828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE782C  7C 08 03 A6 */	mtlr r0
/* 80CE7830  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7834  4E 80 00 20 */	blr 
