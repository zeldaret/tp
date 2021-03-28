lbl_80A22284:
/* 80A22284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A22288  7C 08 02 A6 */	mflr r0
/* 80A2228C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A22290  88 03 14 68 */	lbz r0, 0x1468(r3)
/* 80A22294  28 00 00 00 */	cmplwi r0, 0
/* 80A22298  40 82 00 24 */	bne lbl_80A222BC
/* 80A2229C  38 80 00 00 */	li r4, 0
/* 80A222A0  38 A0 00 00 */	li r5, 0
/* 80A222A4  3C C0 80 A2 */	lis r6, m__20daNpcKasiKyu_Param_c@ha
/* 80A222A8  38 C6 58 B8 */	addi r6, r6, m__20daNpcKasiKyu_Param_c@l
/* 80A222AC  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80A222B0  38 C0 00 00 */	li r6, 0
/* 80A222B4  38 E0 00 00 */	li r7, 0
/* 80A222B8  4B 72 FF F4 */	b draw__8daNpcF_cFiifP11_GXColorS10i
lbl_80A222BC:
/* 80A222BC  38 60 00 01 */	li r3, 1
/* 80A222C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A222C4  7C 08 03 A6 */	mtlr r0
/* 80A222C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A222CC  4E 80 00 20 */	blr 
