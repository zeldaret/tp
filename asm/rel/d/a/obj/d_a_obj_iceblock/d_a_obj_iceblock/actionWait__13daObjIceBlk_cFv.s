lbl_80C23B0C:
/* 80C23B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C23B10  7C 08 02 A6 */	mflr r0
/* 80C23B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C23B18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C23B1C  7C 7F 1B 78 */	mr r31, r3
/* 80C23B20  88 03 09 4D */	lbz r0, 0x94d(r3)
/* 80C23B24  28 00 00 01 */	cmplwi r0, 1
/* 80C23B28  40 82 00 34 */	bne lbl_80C23B5C
/* 80C23B2C  88 1F 09 D0 */	lbz r0, 0x9d0(r31)
/* 80C23B30  28 00 00 01 */	cmplwi r0, 1
/* 80C23B34  40 82 00 28 */	bne lbl_80C23B5C
/* 80C23B38  38 00 00 01 */	li r0, 1
/* 80C23B3C  98 1F 09 4C */	stb r0, 0x94c(r31)
/* 80C23B40  38 80 00 02 */	li r4, 2
/* 80C23B44  38 A0 00 00 */	li r5, 0
/* 80C23B48  38 C0 00 00 */	li r6, 0
/* 80C23B4C  4B 3F 7D BC */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80C23B50  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80C23B54  60 00 00 02 */	ori r0, r0, 2
/* 80C23B58  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80C23B5C:
/* 80C23B5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C23B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C23B64  7C 08 03 A6 */	mtlr r0
/* 80C23B68  38 21 00 10 */	addi r1, r1, 0x10
/* 80C23B6C  4E 80 00 20 */	blr 
