lbl_8014924C:
/* 8014924C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80149250  7C 08 02 A6 */	mflr r0
/* 80149254  90 01 00 24 */	stw r0, 0x24(r1)
/* 80149258  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014925C  7C 7F 1B 78 */	mr r31, r3
/* 80149260  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80149264  A0 9F 0E 20 */	lhz r4, 0xe20(r31)
/* 80149268  38 A1 00 0C */	addi r5, r1, 0xc
/* 8014926C  38 C1 00 08 */	addi r6, r1, 8
/* 80149270  4B FF C6 51 */	bl play__22daNpcT_MotionSeqMngr_cFUsPiPf
/* 80149274  2C 03 00 00 */	cmpwi r3, 0
/* 80149278  41 82 00 74 */	beq lbl_801492EC
/* 8014927C  7F E3 FB 78 */	mr r3, r31
/* 80149280  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80149284  38 A0 00 01 */	li r5, 1
/* 80149288  48 00 11 01 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 8014928C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80149290  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80149294  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80149298  40 80 00 30 */	bge lbl_801492C8
/* 8014929C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 801492A0  C0 3F 0A 80 */	lfs f1, 0xa80(r31)
/* 801492A4  4B EC 68 D9 */	bl setMorf__13mDoExt_morf_cFf
/* 801492A8  C0 1F 0A 80 */	lfs f0, 0xa80(r31)
/* 801492AC  D0 1F 0D FC */	stfs f0, 0xdfc(r31)
/* 801492B0  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 801492B4  28 03 00 00 */	cmplwi r3, 0
/* 801492B8  41 82 00 34 */	beq lbl_801492EC
/* 801492BC  C0 3F 0A 80 */	lfs f1, 0xa80(r31)
/* 801492C0  4B EC 68 BD */	bl setMorf__13mDoExt_morf_cFf
/* 801492C4  48 00 00 28 */	b lbl_801492EC
lbl_801492C8:
/* 801492C8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 801492CC  4B EC 68 B1 */	bl setMorf__13mDoExt_morf_cFf
/* 801492D0  C0 01 00 08 */	lfs f0, 8(r1)
/* 801492D4  D0 1F 0D FC */	stfs f0, 0xdfc(r31)
/* 801492D8  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 801492DC  28 03 00 00 */	cmplwi r3, 0
/* 801492E0  41 82 00 0C */	beq lbl_801492EC
/* 801492E4  C0 21 00 08 */	lfs f1, 8(r1)
/* 801492E8  4B EC 68 95 */	bl setMorf__13mDoExt_morf_cFf
lbl_801492EC:
/* 801492EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801492F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801492F4  7C 08 03 A6 */	mtlr r0
/* 801492F8  38 21 00 20 */	addi r1, r1, 0x20
/* 801492FC  4E 80 00 20 */	blr 
