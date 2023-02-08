lbl_809ACFF8:
/* 809ACFF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809ACFFC  7C 08 02 A6 */	mflr r0
/* 809AD000  90 01 00 24 */	stw r0, 0x24(r1)
/* 809AD004  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 809AD008  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 809AD00C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AD010  93 C1 00 08 */	stw r30, 8(r1)
/* 809AD014  7C 7F 1B 78 */	mr r31, r3
/* 809AD018  FF E0 08 90 */	fmr f31, f1
/* 809AD01C  1F C4 00 0C */	mulli r30, r4, 0xc
/* 809AD020  3C 80 80 9B */	lis r4, l_bckGetParamList@ha /* 0x809ADB48@ha */
/* 809AD024  38 A4 DB 48 */	addi r5, r4, l_bckGetParamList@l /* 0x809ADB48@l */
/* 809AD028  7C 85 F2 14 */	add r4, r5, r30
/* 809AD02C  80 04 00 08 */	lwz r0, 8(r4)
/* 809AD030  54 00 10 3A */	slwi r0, r0, 2
/* 809AD034  3C 80 80 9B */	lis r4, l_arcNames@ha /* 0x809ADB9C@ha */
/* 809AD038  38 84 DB 9C */	addi r4, r4, l_arcNames@l /* 0x809ADB9C@l */
/* 809AD03C  7C 84 00 2E */	lwzx r4, r4, r0
/* 809AD040  7C A5 F0 2E */	lwzx r5, r5, r30
/* 809AD044  4B 7A 5A E9 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809AD048  7C 64 1B 79 */	or. r4, r3, r3
/* 809AD04C  3C 60 80 9B */	lis r3, l_bckGetParamList@ha /* 0x809ADB48@ha */
/* 809AD050  38 03 DB 48 */	addi r0, r3, l_bckGetParamList@l /* 0x809ADB48@l */
/* 809AD054  7C 60 F2 14 */	add r3, r0, r30
/* 809AD058  80 A3 00 04 */	lwz r5, 4(r3)
/* 809AD05C  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 809AD060  38 00 FF F6 */	li r0, -10
/* 809AD064  7C 60 00 38 */	and r0, r3, r0
/* 809AD068  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 809AD06C  41 82 00 3C */	beq lbl_809AD0A8
/* 809AD070  7F E3 FB 78 */	mr r3, r31
/* 809AD074  3C C0 80 9B */	lis r6, lit_4319@ha /* 0x809ADA24@ha */
/* 809AD078  C0 26 DA 24 */	lfs f1, lit_4319@l(r6)  /* 0x809ADA24@l */
/* 809AD07C  FC 40 F8 90 */	fmr f2, f31
/* 809AD080  38 C0 00 00 */	li r6, 0
/* 809AD084  38 E0 FF FF */	li r7, -1
/* 809AD088  4B 7A 5B 95 */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 809AD08C  2C 03 00 00 */	cmpwi r3, 0
/* 809AD090  41 82 00 18 */	beq lbl_809AD0A8
/* 809AD094  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809AD098  60 00 00 09 */	ori r0, r0, 9
/* 809AD09C  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 809AD0A0  38 00 00 00 */	li r0, 0
/* 809AD0A4  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_809AD0A8:
/* 809AD0A8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 809AD0AC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 809AD0B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AD0B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AD0B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809AD0BC  7C 08 03 A6 */	mtlr r0
/* 809AD0C0  38 21 00 20 */	addi r1, r1, 0x20
/* 809AD0C4  4E 80 00 20 */	blr 
