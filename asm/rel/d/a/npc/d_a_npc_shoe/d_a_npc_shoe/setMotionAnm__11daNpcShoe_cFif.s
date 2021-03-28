lbl_80AE9A00:
/* 80AE9A00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AE9A04  7C 08 02 A6 */	mflr r0
/* 80AE9A08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE9A0C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80AE9A10  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80AE9A14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE9A18  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE9A1C  7C 7F 1B 78 */	mr r31, r3
/* 80AE9A20  FF E0 08 90 */	fmr f31, f1
/* 80AE9A24  1F C4 00 0C */	mulli r30, r4, 0xc
/* 80AE9A28  3C 80 80 AF */	lis r4, l_bckGetParamList@ha
/* 80AE9A2C  38 A4 A5 58 */	addi r5, r4, l_bckGetParamList@l
/* 80AE9A30  7C 85 F2 14 */	add r4, r5, r30
/* 80AE9A34  80 04 00 08 */	lwz r0, 8(r4)
/* 80AE9A38  54 00 10 3A */	slwi r0, r0, 2
/* 80AE9A3C  3C 80 80 AF */	lis r4, l_arcNames@ha
/* 80AE9A40  38 84 A5 A0 */	addi r4, r4, l_arcNames@l
/* 80AE9A44  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AE9A48  7C A5 F0 2E */	lwzx r5, r5, r30
/* 80AE9A4C  4B 66 90 E0 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AE9A50  7C 64 1B 79 */	or. r4, r3, r3
/* 80AE9A54  3C 60 80 AF */	lis r3, l_bckGetParamList@ha
/* 80AE9A58  38 03 A5 58 */	addi r0, r3, l_bckGetParamList@l
/* 80AE9A5C  7C 60 F2 14 */	add r3, r0, r30
/* 80AE9A60  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AE9A64  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 80AE9A68  38 00 FF F6 */	li r0, -10
/* 80AE9A6C  7C 60 00 38 */	and r0, r3, r0
/* 80AE9A70  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80AE9A74  41 82 00 3C */	beq lbl_80AE9AB0
/* 80AE9A78  7F E3 FB 78 */	mr r3, r31
/* 80AE9A7C  3C C0 80 AF */	lis r6, lit_4235@ha
/* 80AE9A80  C0 26 A4 2C */	lfs f1, lit_4235@l(r6)
/* 80AE9A84  FC 40 F8 90 */	fmr f2, f31
/* 80AE9A88  38 C0 00 00 */	li r6, 0
/* 80AE9A8C  38 E0 FF FF */	li r7, -1
/* 80AE9A90  4B 66 91 8C */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80AE9A94  2C 03 00 00 */	cmpwi r3, 0
/* 80AE9A98  41 82 00 18 */	beq lbl_80AE9AB0
/* 80AE9A9C  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80AE9AA0  60 00 00 09 */	ori r0, r0, 9
/* 80AE9AA4  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80AE9AA8  38 00 00 00 */	li r0, 0
/* 80AE9AAC  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_80AE9AB0:
/* 80AE9AB0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80AE9AB4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80AE9AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE9ABC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE9AC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AE9AC4  7C 08 03 A6 */	mtlr r0
/* 80AE9AC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AE9ACC  4E 80 00 20 */	blr 
