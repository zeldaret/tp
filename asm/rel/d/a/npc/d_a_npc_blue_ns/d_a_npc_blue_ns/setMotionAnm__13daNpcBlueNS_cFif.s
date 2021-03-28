lbl_8096A238:
/* 8096A238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096A23C  7C 08 02 A6 */	mflr r0
/* 8096A240  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096A244  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8096A248  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8096A24C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096A250  93 C1 00 08 */	stw r30, 8(r1)
/* 8096A254  7C 7F 1B 78 */	mr r31, r3
/* 8096A258  FF E0 08 90 */	fmr f31, f1
/* 8096A25C  1F C4 00 0C */	mulli r30, r4, 0xc
/* 8096A260  3C 80 80 97 */	lis r4, l_bckGetParamList@ha
/* 8096A264  38 A4 CB C0 */	addi r5, r4, l_bckGetParamList@l
/* 8096A268  7C 85 F2 14 */	add r4, r5, r30
/* 8096A26C  80 04 00 08 */	lwz r0, 8(r4)
/* 8096A270  54 00 10 3A */	slwi r0, r0, 2
/* 8096A274  3C 80 80 97 */	lis r4, l_arcNames@ha
/* 8096A278  38 84 CC 2C */	addi r4, r4, l_arcNames@l
/* 8096A27C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8096A280  7C A5 F0 2E */	lwzx r5, r5, r30
/* 8096A284  4B 7E 88 A8 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 8096A288  7C 64 1B 79 */	or. r4, r3, r3
/* 8096A28C  3C 60 80 97 */	lis r3, l_bckGetParamList@ha
/* 8096A290  38 03 CB C0 */	addi r0, r3, l_bckGetParamList@l
/* 8096A294  7C 60 F2 14 */	add r3, r0, r30
/* 8096A298  80 A3 00 04 */	lwz r5, 4(r3)
/* 8096A29C  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 8096A2A0  38 00 FF F6 */	li r0, -10
/* 8096A2A4  7C 60 00 38 */	and r0, r3, r0
/* 8096A2A8  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 8096A2AC  41 82 00 3C */	beq lbl_8096A2E8
/* 8096A2B0  7F E3 FB 78 */	mr r3, r31
/* 8096A2B4  3C C0 80 97 */	lis r6, lit_4306@ha
/* 8096A2B8  C0 26 C9 E8 */	lfs f1, lit_4306@l(r6)
/* 8096A2BC  FC 40 F8 90 */	fmr f2, f31
/* 8096A2C0  38 C0 00 00 */	li r6, 0
/* 8096A2C4  38 E0 FF FF */	li r7, -1
/* 8096A2C8  4B 7E 89 54 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 8096A2CC  2C 03 00 00 */	cmpwi r3, 0
/* 8096A2D0  41 82 00 18 */	beq lbl_8096A2E8
/* 8096A2D4  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 8096A2D8  60 00 00 09 */	ori r0, r0, 9
/* 8096A2DC  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 8096A2E0  38 00 00 00 */	li r0, 0
/* 8096A2E4  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_8096A2E8:
/* 8096A2E8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8096A2EC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8096A2F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096A2F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8096A2F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096A2FC  7C 08 03 A6 */	mtlr r0
/* 8096A300  38 21 00 20 */	addi r1, r1, 0x20
/* 8096A304  4E 80 00 20 */	blr 
