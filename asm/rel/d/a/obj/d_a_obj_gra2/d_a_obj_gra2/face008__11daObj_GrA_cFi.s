lbl_80C04660:
/* 80C04660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04664  7C 08 02 A6 */	mflr r0
/* 80C04668  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0466C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C04670  7C 7F 1B 78 */	mr r31, r3
/* 80C04674  2C 04 00 00 */	cmpwi r4, 0
/* 80C04678  41 82 00 18 */	beq lbl_80C04690
/* 80C0467C  38 80 00 1D */	li r4, 0x1d
/* 80C04680  38 A0 00 01 */	li r5, 1
/* 80C04684  C0 3F 0A 98 */	lfs f1, 0xa98(r31)
/* 80C04688  4B FF CE 6D */	bl setFaceAnm__11daObj_GrA_cFibf
/* 80C0468C  48 00 00 5C */	b lbl_80C046E8
lbl_80C04690:
/* 80C04690  38 80 00 01 */	li r4, 1
/* 80C04694  88 1F 07 F1 */	lbz r0, 0x7f1(r31)
/* 80C04698  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C0469C  40 82 00 1C */	bne lbl_80C046B8
/* 80C046A0  3C 60 80 C1 */	lis r3, lit_4333@ha
/* 80C046A4  C0 23 FB 98 */	lfs f1, lit_4333@l(r3)
/* 80C046A8  C0 1F 07 F8 */	lfs f0, 0x7f8(r31)
/* 80C046AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C046B0  41 82 00 08 */	beq lbl_80C046B8
/* 80C046B4  38 80 00 00 */	li r4, 0
lbl_80C046B8:
/* 80C046B8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C046BC  41 82 00 2C */	beq lbl_80C046E8
/* 80C046C0  7F E3 FB 78 */	mr r3, r31
/* 80C046C4  38 80 00 04 */	li r4, 4
/* 80C046C8  3C A0 80 C1 */	lis r5, lit_4618@ha
/* 80C046CC  C0 25 FB B4 */	lfs f1, lit_4618@l(r5)
/* 80C046D0  4B FF D0 DD */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C046D4  7F E3 FB 78 */	mr r3, r31
/* 80C046D8  38 80 00 18 */	li r4, 0x18
/* 80C046DC  38 A0 00 01 */	li r5, 1
/* 80C046E0  C0 3F 0A 98 */	lfs f1, 0xa98(r31)
/* 80C046E4  4B FF CE 11 */	bl setFaceAnm__11daObj_GrA_cFibf
lbl_80C046E8:
/* 80C046E8  38 60 00 01 */	li r3, 1
/* 80C046EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C046F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C046F4  7C 08 03 A6 */	mtlr r0
/* 80C046F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C046FC  4E 80 00 20 */	blr 
