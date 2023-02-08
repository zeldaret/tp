lbl_80AF8564:
/* 80AF8564  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF8568  7C 08 02 A6 */	mflr r0
/* 80AF856C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF8570  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AF8574  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AF8578  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF857C  4B 86 9C 55 */	bl _savegpr_26
/* 80AF8580  7C 7B 1B 78 */	mr r27, r3
/* 80AF8584  7C 9A 23 78 */	mr r26, r4
/* 80AF8588  FF E0 08 90 */	fmr f31, f1
/* 80AF858C  3C 80 80 B0 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80AFC1D0@ha */
/* 80AF8590  3B E4 C1 D0 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80AFC1D0@l */
/* 80AF8594  3B C0 00 00 */	li r30, 0
/* 80AF8598  3B A0 00 00 */	li r29, 0
/* 80AF859C  3B 80 00 02 */	li r28, 2
/* 80AF85A0  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80AF85A4  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80AF85A8  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80AF85AC  57 40 18 38 */	slwi r0, r26, 3
/* 80AF85B0  38 9F 00 30 */	addi r4, r31, 0x30
/* 80AF85B4  7C A4 00 2E */	lwzx r5, r4, r0
/* 80AF85B8  2C 05 00 00 */	cmpwi r5, 0
/* 80AF85BC  41 80 00 20 */	blt lbl_80AF85DC
/* 80AF85C0  7C 84 02 14 */	add r4, r4, r0
/* 80AF85C4  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF85C8  54 00 10 3A */	slwi r0, r0, 2
/* 80AF85CC  38 9F 01 B0 */	addi r4, r31, 0x1b0
/* 80AF85D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AF85D4  4B 65 A5 59 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AF85D8  7C 7E 1B 78 */	mr r30, r3
lbl_80AF85DC:
/* 80AF85DC  38 1A FF F2 */	addi r0, r26, -14
/* 80AF85E0  28 00 00 0C */	cmplwi r0, 0xc
/* 80AF85E4  41 81 00 84 */	bgt lbl_80AF8668
/* 80AF85E8  3C 60 80 B0 */	lis r3, lit_4482@ha /* 0x80AFC494@ha */
/* 80AF85EC  38 63 C4 94 */	addi r3, r3, lit_4482@l /* 0x80AFC494@l */
/* 80AF85F0  54 00 10 3A */	slwi r0, r0, 2
/* 80AF85F4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AF85F8  7C 09 03 A6 */	mtctr r0
/* 80AF85FC  4E 80 04 20 */	bctr 
lbl_80AF8600:
/* 80AF8600  3B 80 00 02 */	li r28, 2
/* 80AF8604  48 00 00 6C */	b lbl_80AF8670
lbl_80AF8608:
/* 80AF8608  3B 80 00 02 */	li r28, 2
/* 80AF860C  48 00 00 64 */	b lbl_80AF8670
lbl_80AF8610:
/* 80AF8610  3B 80 00 00 */	li r28, 0
/* 80AF8614  48 00 00 5C */	b lbl_80AF8670
lbl_80AF8618:
/* 80AF8618  3B 80 00 02 */	li r28, 2
/* 80AF861C  48 00 00 54 */	b lbl_80AF8670
lbl_80AF8620:
/* 80AF8620  3B 80 00 02 */	li r28, 2
/* 80AF8624  48 00 00 4C */	b lbl_80AF8670
lbl_80AF8628:
/* 80AF8628  3B 80 00 00 */	li r28, 0
/* 80AF862C  48 00 00 44 */	b lbl_80AF8670
lbl_80AF8630:
/* 80AF8630  3B 80 00 02 */	li r28, 2
/* 80AF8634  48 00 00 3C */	b lbl_80AF8670
lbl_80AF8638:
/* 80AF8638  3B 80 00 00 */	li r28, 0
/* 80AF863C  48 00 00 34 */	b lbl_80AF8670
lbl_80AF8640:
/* 80AF8640  3B 80 00 00 */	li r28, 0
/* 80AF8644  48 00 00 2C */	b lbl_80AF8670
lbl_80AF8648:
/* 80AF8648  3B 80 00 02 */	li r28, 2
/* 80AF864C  48 00 00 24 */	b lbl_80AF8670
lbl_80AF8650:
/* 80AF8650  3B 80 00 00 */	li r28, 0
/* 80AF8654  48 00 00 1C */	b lbl_80AF8670
lbl_80AF8658:
/* 80AF8658  3B 80 00 02 */	li r28, 2
/* 80AF865C  48 00 00 14 */	b lbl_80AF8670
lbl_80AF8660:
/* 80AF8660  3B 80 00 00 */	li r28, 0
/* 80AF8664  48 00 00 0C */	b lbl_80AF8670
lbl_80AF8668:
/* 80AF8668  3B C0 00 00 */	li r30, 0
/* 80AF866C  3B A0 00 00 */	li r29, 0
lbl_80AF8670:
/* 80AF8670  80 BF 01 78 */	lwz r5, 0x178(r31)
/* 80AF8674  2C 05 00 00 */	cmpwi r5, 0
/* 80AF8678  41 80 00 24 */	blt lbl_80AF869C
/* 80AF867C  7F 63 DB 78 */	mr r3, r27
/* 80AF8680  38 9F 01 78 */	addi r4, r31, 0x178
/* 80AF8684  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF8688  54 00 10 3A */	slwi r0, r0, 2
/* 80AF868C  38 9F 01 B0 */	addi r4, r31, 0x1b0
/* 80AF8690  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AF8694  4B 65 A5 11 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80AF8698  7C 7D 1B 78 */	mr r29, r3
lbl_80AF869C:
/* 80AF869C  28 1D 00 00 */	cmplwi r29, 0
/* 80AF86A0  41 82 00 3C */	beq lbl_80AF86DC
/* 80AF86A4  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80AF86A8  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF86AC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AF86B0  7F 63 DB 78 */	mr r3, r27
/* 80AF86B4  7F A4 EB 78 */	mr r4, r29
/* 80AF86B8  3C C0 80 B0 */	lis r6, lit_4296@ha /* 0x80AFBE84@ha */
/* 80AF86BC  C0 26 BE 84 */	lfs f1, lit_4296@l(r6)  /* 0x80AFBE84@l */
/* 80AF86C0  38 C0 00 02 */	li r6, 2
/* 80AF86C4  4B 65 A6 41 */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80AF86C8  2C 03 00 00 */	cmpwi r3, 0
/* 80AF86CC  41 82 00 10 */	beq lbl_80AF86DC
/* 80AF86D0  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 80AF86D4  60 00 00 12 */	ori r0, r0, 0x12
/* 80AF86D8  90 1B 09 9C */	stw r0, 0x99c(r27)
lbl_80AF86DC:
/* 80AF86DC  28 1E 00 00 */	cmplwi r30, 0
/* 80AF86E0  41 82 00 44 */	beq lbl_80AF8724
/* 80AF86E4  7F 63 DB 78 */	mr r3, r27
/* 80AF86E8  7F C4 F3 78 */	mr r4, r30
/* 80AF86EC  3C A0 80 B0 */	lis r5, lit_4296@ha /* 0x80AFBE84@ha */
/* 80AF86F0  C0 25 BE 84 */	lfs f1, lit_4296@l(r5)  /* 0x80AFBE84@l */
/* 80AF86F4  FC 40 F8 90 */	fmr f2, f31
/* 80AF86F8  7F 85 E3 78 */	mr r5, r28
/* 80AF86FC  38 C0 00 00 */	li r6, 0
/* 80AF8700  38 E0 FF FF */	li r7, -1
/* 80AF8704  4B 65 A5 19 */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80AF8708  2C 03 00 00 */	cmpwi r3, 0
/* 80AF870C  41 82 00 18 */	beq lbl_80AF8724
/* 80AF8710  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 80AF8714  60 00 00 09 */	ori r0, r0, 9
/* 80AF8718  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 80AF871C  38 00 00 00 */	li r0, 0
/* 80AF8720  B0 1B 09 E2 */	sth r0, 0x9e2(r27)
lbl_80AF8724:
/* 80AF8724  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AF8728  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AF872C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF8730  4B 86 9A ED */	bl _restgpr_26
/* 80AF8734  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF8738  7C 08 03 A6 */	mtlr r0
/* 80AF873C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF8740  4E 80 00 20 */	blr 
