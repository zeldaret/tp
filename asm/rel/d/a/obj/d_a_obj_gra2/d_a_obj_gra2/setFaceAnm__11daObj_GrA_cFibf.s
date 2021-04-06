lbl_80C014F4:
/* 80C014F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C014F8  7C 08 02 A6 */	mflr r0
/* 80C014FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C01500  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C01504  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C01508  39 61 00 20 */	addi r11, r1, 0x20
/* 80C0150C  4B 76 0C C9 */	bl _savegpr_27
/* 80C01510  7C 7B 1B 78 */	mr r27, r3
/* 80C01514  7C 9C 23 78 */	mr r28, r4
/* 80C01518  7C BD 2B 78 */	mr r29, r5
/* 80C0151C  FF E0 08 90 */	fmr f31, f1
/* 80C01520  3B E0 00 00 */	li r31, 0
/* 80C01524  3B C0 00 00 */	li r30, 0
/* 80C01528  54 80 18 38 */	slwi r0, r4, 3
/* 80C0152C  3C 80 80 C1 */	lis r4, l_bckGetParamList@ha /* 0x80C0FEF4@ha */
/* 80C01530  38 84 FE F4 */	addi r4, r4, l_bckGetParamList@l /* 0x80C0FEF4@l */
/* 80C01534  7C A4 00 2E */	lwzx r5, r4, r0
/* 80C01538  2C 05 00 00 */	cmpwi r5, 0
/* 80C0153C  41 80 00 24 */	blt lbl_80C01560
/* 80C01540  7C 84 02 14 */	add r4, r4, r0
/* 80C01544  80 04 00 04 */	lwz r0, 4(r4)
/* 80C01548  54 00 10 3A */	slwi r0, r0, 2
/* 80C0154C  3C 80 80 C1 */	lis r4, l_resNames@ha /* 0x80C0FED8@ha */
/* 80C01550  38 84 FE D8 */	addi r4, r4, l_resNames@l /* 0x80C0FED8@l */
/* 80C01554  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C01558  4B 54 D8 ED */	bl getTrnsfrmKeyAnmP__11daBaseNpc_cFPci
/* 80C0155C  7C 7F 1B 78 */	mr r31, r3
lbl_80C01560:
/* 80C01560  A0 7B 08 40 */	lhz r3, 0x840(r27)
/* 80C01564  38 00 FF BB */	li r0, -69
/* 80C01568  7C 60 00 38 */	and r0, r3, r0
/* 80C0156C  B0 1B 08 40 */	sth r0, 0x840(r27)
/* 80C01570  A0 7B 08 40 */	lhz r3, 0x840(r27)
/* 80C01574  38 00 FF DD */	li r0, -35
/* 80C01578  7C 60 00 38 */	and r0, r3, r0
/* 80C0157C  B0 1B 08 40 */	sth r0, 0x840(r27)
/* 80C01580  38 1C FF EA */	addi r0, r28, -22
/* 80C01584  28 00 00 0C */	cmplwi r0, 0xc
/* 80C01588  41 81 00 A0 */	bgt lbl_80C01628
/* 80C0158C  3C 60 80 C1 */	lis r3, lit_4792@ha /* 0x80C100C0@ha */
/* 80C01590  38 63 00 C0 */	addi r3, r3, lit_4792@l /* 0x80C100C0@l */
/* 80C01594  54 00 10 3A */	slwi r0, r0, 2
/* 80C01598  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C0159C  7C 09 03 A6 */	mtctr r0
/* 80C015A0  4E 80 04 20 */	bctr 
lbl_80C015A4:
/* 80C015A4  3B C0 00 02 */	li r30, 2
/* 80C015A8  7F 63 DB 78 */	mr r3, r27
/* 80C015AC  38 80 00 00 */	li r4, 0
/* 80C015B0  48 00 00 E9 */	bl setFaceBtp__11daObj_GrA_cFi
/* 80C015B4  48 00 00 78 */	b lbl_80C0162C
lbl_80C015B8:
/* 80C015B8  7F 63 DB 78 */	mr r3, r27
/* 80C015BC  38 80 00 00 */	li r4, 0
/* 80C015C0  48 00 00 D9 */	bl setFaceBtp__11daObj_GrA_cFi
/* 80C015C4  48 00 00 68 */	b lbl_80C0162C
lbl_80C015C8:
/* 80C015C8  7F 63 DB 78 */	mr r3, r27
/* 80C015CC  38 80 00 01 */	li r4, 1
/* 80C015D0  48 00 00 C9 */	bl setFaceBtp__11daObj_GrA_cFi
/* 80C015D4  48 00 00 58 */	b lbl_80C0162C
lbl_80C015D8:
/* 80C015D8  7F 63 DB 78 */	mr r3, r27
/* 80C015DC  38 80 00 02 */	li r4, 2
/* 80C015E0  48 00 00 B9 */	bl setFaceBtp__11daObj_GrA_cFi
/* 80C015E4  48 00 00 48 */	b lbl_80C0162C
lbl_80C015E8:
/* 80C015E8  7F 63 DB 78 */	mr r3, r27
/* 80C015EC  38 80 00 00 */	li r4, 0
/* 80C015F0  48 00 00 A9 */	bl setFaceBtp__11daObj_GrA_cFi
/* 80C015F4  48 00 00 38 */	b lbl_80C0162C
lbl_80C015F8:
/* 80C015F8  7F 63 DB 78 */	mr r3, r27
/* 80C015FC  38 80 00 03 */	li r4, 3
/* 80C01600  48 00 00 99 */	bl setFaceBtp__11daObj_GrA_cFi
/* 80C01604  48 00 00 28 */	b lbl_80C0162C
lbl_80C01608:
/* 80C01608  7F 63 DB 78 */	mr r3, r27
/* 80C0160C  38 80 00 00 */	li r4, 0
/* 80C01610  48 00 00 89 */	bl setFaceBtp__11daObj_GrA_cFi
/* 80C01614  48 00 00 18 */	b lbl_80C0162C
lbl_80C01618:
/* 80C01618  7F 63 DB 78 */	mr r3, r27
/* 80C0161C  38 80 00 00 */	li r4, 0
/* 80C01620  48 00 00 79 */	bl setFaceBtp__11daObj_GrA_cFi
/* 80C01624  48 00 00 08 */	b lbl_80C0162C
lbl_80C01628:
/* 80C01628  3B E0 00 00 */	li r31, 0
lbl_80C0162C:
/* 80C0162C  28 1F 00 00 */	cmplwi r31, 0
/* 80C01630  41 82 00 48 */	beq lbl_80C01678
/* 80C01634  7F 63 DB 78 */	mr r3, r27
/* 80C01638  7F E4 FB 78 */	mr r4, r31
/* 80C0163C  3C A0 80 C1 */	lis r5, lit_4332@ha /* 0x80C0FB94@ha */
/* 80C01640  C0 25 FB 94 */	lfs f1, lit_4332@l(r5)  /* 0x80C0FB94@l */
/* 80C01644  7F C5 F3 78 */	mr r5, r30
/* 80C01648  38 C0 00 00 */	li r6, 0
/* 80C0164C  38 E0 FF FF */	li r7, -1
/* 80C01650  7F A8 EB 78 */	mr r8, r29
/* 80C01654  4B 54 D8 91 */	bl setBckAnm__11daBaseNpc_cFP15J3DAnmTransformfiiib
/* 80C01658  2C 03 00 00 */	cmpwi r3, 0
/* 80C0165C  41 82 00 1C */	beq lbl_80C01678
/* 80C01660  A0 1B 08 40 */	lhz r0, 0x840(r27)
/* 80C01664  60 00 00 22 */	ori r0, r0, 0x22
/* 80C01668  B0 1B 08 40 */	sth r0, 0x840(r27)
/* 80C0166C  80 7B 07 54 */	lwz r3, 0x754(r27)
/* 80C01670  FC 20 F8 90 */	fmr f1, f31
/* 80C01674  4B 40 E5 09 */	bl setMorf__13mDoExt_morf_cFf
lbl_80C01678:
/* 80C01678  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C0167C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C01680  39 61 00 20 */	addi r11, r1, 0x20
/* 80C01684  4B 76 0B 9D */	bl _restgpr_27
/* 80C01688  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C0168C  7C 08 03 A6 */	mtlr r0
/* 80C01690  38 21 00 30 */	addi r1, r1, 0x30
/* 80C01694  4E 80 00 20 */	blr 
