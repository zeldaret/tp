lbl_80A22984:
/* 80A22984  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A22988  7C 08 02 A6 */	mflr r0
/* 80A2298C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A22990  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80A22994  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80A22998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2299C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A229A0  7C 7F 1B 78 */	mr r31, r3
/* 80A229A4  FF E0 08 90 */	fmr f31, f1
/* 80A229A8  1F C4 00 0C */	mulli r30, r4, 0xc
/* 80A229AC  3C 80 80 A2 */	lis r4, l_bckGetParamList@ha
/* 80A229B0  38 A4 5B 44 */	addi r5, r4, l_bckGetParamList@l
/* 80A229B4  7C 85 F2 14 */	add r4, r5, r30
/* 80A229B8  80 04 00 08 */	lwz r0, 8(r4)
/* 80A229BC  54 00 10 3A */	slwi r0, r0, 2
/* 80A229C0  3C 80 80 A2 */	lis r4, l_arcNames@ha
/* 80A229C4  38 84 5C 10 */	addi r4, r4, l_arcNames@l
/* 80A229C8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A229CC  7C A5 F0 2E */	lwzx r5, r5, r30
/* 80A229D0  4B 73 01 5C */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A229D4  7C 64 1B 79 */	or. r4, r3, r3
/* 80A229D8  3C 60 80 A2 */	lis r3, l_bckGetParamList@ha
/* 80A229DC  38 03 5B 44 */	addi r0, r3, l_bckGetParamList@l
/* 80A229E0  7C 60 F2 14 */	add r3, r0, r30
/* 80A229E4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A229E8  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 80A229EC  38 00 FF F6 */	li r0, -10
/* 80A229F0  7C 60 00 38 */	and r0, r3, r0
/* 80A229F4  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80A229F8  41 82 00 3C */	beq lbl_80A22A34
/* 80A229FC  7F E3 FB 78 */	mr r3, r31
/* 80A22A00  3C C0 80 A2 */	lis r6, lit_4247@ha
/* 80A22A04  C0 26 59 3C */	lfs f1, lit_4247@l(r6)
/* 80A22A08  FC 40 F8 90 */	fmr f2, f31
/* 80A22A0C  38 C0 00 00 */	li r6, 0
/* 80A22A10  38 E0 FF FF */	li r7, -1
/* 80A22A14  4B 73 02 08 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80A22A18  2C 03 00 00 */	cmpwi r3, 0
/* 80A22A1C  41 82 00 18 */	beq lbl_80A22A34
/* 80A22A20  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80A22A24  60 00 00 09 */	ori r0, r0, 9
/* 80A22A28  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80A22A2C  38 00 00 00 */	li r0, 0
/* 80A22A30  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_80A22A34:
/* 80A22A34  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80A22A38  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80A22A3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A22A40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A22A44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A22A48  7C 08 03 A6 */	mtlr r0
/* 80A22A4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A22A50  4E 80 00 20 */	blr 
