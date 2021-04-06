lbl_80A26A84:
/* 80A26A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A26A88  7C 08 02 A6 */	mflr r0
/* 80A26A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A26A90  88 03 14 68 */	lbz r0, 0x1468(r3)
/* 80A26A94  28 00 00 00 */	cmplwi r0, 0
/* 80A26A98  40 82 00 24 */	bne lbl_80A26ABC
/* 80A26A9C  38 80 00 00 */	li r4, 0
/* 80A26AA0  38 A0 00 00 */	li r5, 0
/* 80A26AA4  3C C0 80 A3 */	lis r6, m__21daNpcKasiMich_Param_c@ha /* 0x80A2A04C@ha */
/* 80A26AA8  38 C6 A0 4C */	addi r6, r6, m__21daNpcKasiMich_Param_c@l /* 0x80A2A04C@l */
/* 80A26AAC  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80A26AB0  38 C0 00 00 */	li r6, 0
/* 80A26AB4  38 E0 00 00 */	li r7, 0
/* 80A26AB8  4B 72 B7 F5 */	bl draw__8daNpcF_cFiifP11_GXColorS10i
lbl_80A26ABC:
/* 80A26ABC  38 60 00 01 */	li r3, 1
/* 80A26AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A26AC4  7C 08 03 A6 */	mtlr r0
/* 80A26AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A26ACC  4E 80 00 20 */	blr 
