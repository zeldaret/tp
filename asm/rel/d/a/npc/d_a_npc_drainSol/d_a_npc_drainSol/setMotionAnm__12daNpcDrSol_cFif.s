lbl_809AF12C:
/* 809AF12C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809AF130  7C 08 02 A6 */	mflr r0
/* 809AF134  90 01 00 24 */	stw r0, 0x24(r1)
/* 809AF138  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 809AF13C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 809AF140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AF144  93 C1 00 08 */	stw r30, 8(r1)
/* 809AF148  7C 7F 1B 78 */	mr r31, r3
/* 809AF14C  7C 85 23 78 */	mr r5, r4
/* 809AF150  FF E0 08 90 */	fmr f31, f1
/* 809AF154  88 03 0D 39 */	lbz r0, 0xd39(r3)
/* 809AF158  54 00 10 3A */	slwi r0, r0, 2
/* 809AF15C  3C 80 80 9B */	lis r4, l_arcNames@ha /* 0x809AFAEC@ha */
/* 809AF160  38 84 FA EC */	addi r4, r4, l_arcNames@l /* 0x809AFAEC@l */
/* 809AF164  7C 84 00 2E */	lwzx r4, r4, r0
/* 809AF168  54 BE 18 38 */	slwi r30, r5, 3
/* 809AF16C  3C A0 80 9B */	lis r5, l_bckGetParamList@ha /* 0x809AFAD4@ha */
/* 809AF170  38 A5 FA D4 */	addi r5, r5, l_bckGetParamList@l /* 0x809AFAD4@l */
/* 809AF174  7C A5 F0 2E */	lwzx r5, r5, r30
/* 809AF178  4B 7A 39 B5 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809AF17C  7C 64 1B 79 */	or. r4, r3, r3
/* 809AF180  3C 60 80 9B */	lis r3, l_bckGetParamList@ha /* 0x809AFAD4@ha */
/* 809AF184  38 03 FA D4 */	addi r0, r3, l_bckGetParamList@l /* 0x809AFAD4@l */
/* 809AF188  7C 60 F2 14 */	add r3, r0, r30
/* 809AF18C  80 A3 00 04 */	lwz r5, 4(r3)
/* 809AF190  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 809AF194  38 00 FF F6 */	li r0, -10
/* 809AF198  7C 60 00 38 */	and r0, r3, r0
/* 809AF19C  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 809AF1A0  41 82 00 3C */	beq lbl_809AF1DC
/* 809AF1A4  7F E3 FB 78 */	mr r3, r31
/* 809AF1A8  3C C0 80 9B */	lis r6, lit_4190@ha /* 0x809AFA38@ha */
/* 809AF1AC  C0 26 FA 38 */	lfs f1, lit_4190@l(r6)  /* 0x809AFA38@l */
/* 809AF1B0  FC 40 F8 90 */	fmr f2, f31
/* 809AF1B4  38 C0 00 00 */	li r6, 0
/* 809AF1B8  38 E0 FF FF */	li r7, -1
/* 809AF1BC  4B 7A 3A 61 */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 809AF1C0  2C 03 00 00 */	cmpwi r3, 0
/* 809AF1C4  41 82 00 18 */	beq lbl_809AF1DC
/* 809AF1C8  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809AF1CC  60 00 00 09 */	ori r0, r0, 9
/* 809AF1D0  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 809AF1D4  38 00 00 00 */	li r0, 0
/* 809AF1D8  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_809AF1DC:
/* 809AF1DC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 809AF1E0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 809AF1E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AF1E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AF1EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809AF1F0  7C 08 03 A6 */	mtlr r0
/* 809AF1F4  38 21 00 20 */	addi r1, r1, 0x20
/* 809AF1F8  4E 80 00 20 */	blr 
