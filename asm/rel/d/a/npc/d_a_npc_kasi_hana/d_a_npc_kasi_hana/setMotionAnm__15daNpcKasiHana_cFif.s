lbl_80A1CED0:
/* 80A1CED0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1CED4  7C 08 02 A6 */	mflr r0
/* 80A1CED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1CEDC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80A1CEE0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80A1CEE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1CEE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A1CEEC  7C 7F 1B 78 */	mr r31, r3
/* 80A1CEF0  FF E0 08 90 */	fmr f31, f1
/* 80A1CEF4  1F C4 00 0C */	mulli r30, r4, 0xc
/* 80A1CEF8  3C 80 80 A2 */	lis r4, l_bckGetParamList@ha /* 0x80A213F4@ha */
/* 80A1CEFC  38 A4 13 F4 */	addi r5, r4, l_bckGetParamList@l /* 0x80A213F4@l */
/* 80A1CF00  7C 85 F2 14 */	add r4, r5, r30
/* 80A1CF04  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1CF08  54 00 10 3A */	slwi r0, r0, 2
/* 80A1CF0C  3C 80 80 A2 */	lis r4, l_arcNames@ha /* 0x80A214B4@ha */
/* 80A1CF10  38 84 14 B4 */	addi r4, r4, l_arcNames@l /* 0x80A214B4@l */
/* 80A1CF14  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A1CF18  7C A5 F0 2E */	lwzx r5, r5, r30
/* 80A1CF1C  4B 73 5C 11 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A1CF20  7C 64 1B 79 */	or. r4, r3, r3
/* 80A1CF24  3C 60 80 A2 */	lis r3, l_bckGetParamList@ha /* 0x80A213F4@ha */
/* 80A1CF28  38 03 13 F4 */	addi r0, r3, l_bckGetParamList@l /* 0x80A213F4@l */
/* 80A1CF2C  7C 60 F2 14 */	add r3, r0, r30
/* 80A1CF30  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A1CF34  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 80A1CF38  38 00 FF F6 */	li r0, -10
/* 80A1CF3C  7C 60 00 38 */	and r0, r3, r0
/* 80A1CF40  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80A1CF44  41 82 00 3C */	beq lbl_80A1CF80
/* 80A1CF48  7F E3 FB 78 */	mr r3, r31
/* 80A1CF4C  3C C0 80 A2 */	lis r6, lit_4211@ha /* 0x80A210C0@ha */
/* 80A1CF50  C0 26 10 C0 */	lfs f1, lit_4211@l(r6)  /* 0x80A210C0@l */
/* 80A1CF54  FC 40 F8 90 */	fmr f2, f31
/* 80A1CF58  38 C0 00 00 */	li r6, 0
/* 80A1CF5C  38 E0 FF FF */	li r7, -1
/* 80A1CF60  4B 73 5C BD */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80A1CF64  2C 03 00 00 */	cmpwi r3, 0
/* 80A1CF68  41 82 00 18 */	beq lbl_80A1CF80
/* 80A1CF6C  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80A1CF70  60 00 00 09 */	ori r0, r0, 9
/* 80A1CF74  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80A1CF78  38 00 00 00 */	li r0, 0
/* 80A1CF7C  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_80A1CF80:
/* 80A1CF80  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80A1CF84  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80A1CF88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1CF8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A1CF90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1CF94  7C 08 03 A6 */	mtlr r0
/* 80A1CF98  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1CF9C  4E 80 00 20 */	blr 
