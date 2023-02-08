lbl_80A395DC:
/* 80A395DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A395E0  7C 08 02 A6 */	mflr r0
/* 80A395E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A395E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A395EC  7C 7F 1B 78 */	mr r31, r3
/* 80A395F0  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A395F4  A0 9F 0E 28 */	lhz r4, 0xe28(r31)
/* 80A395F8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80A395FC  38 C1 00 08 */	addi r6, r1, 8
/* 80A39600  4B 70 C2 C1 */	bl play__22daNpcT_MotionSeqMngr_cFUsPiPf
/* 80A39604  2C 03 00 00 */	cmpwi r3, 0
/* 80A39608  41 82 00 68 */	beq lbl_80A39670
/* 80A3960C  7F E3 FB 78 */	mr r3, r31
/* 80A39610  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A39614  38 A0 00 01 */	li r5, 1
/* 80A39618  48 00 0F 51 */	bl setFaceMotionAnm__10daNpc_Kn_cFib
/* 80A3961C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A39620  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A39624  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A39628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3962C  40 80 00 28 */	bge lbl_80A39654
/* 80A39630  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A39634  C0 3F 0A B4 */	lfs f1, 0xab4(r31)
/* 80A39638  4B 5D 65 45 */	bl setMorf__13mDoExt_morf_cFf
/* 80A3963C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80A39640  28 03 00 00 */	cmplwi r3, 0
/* 80A39644  41 82 00 2C */	beq lbl_80A39670
/* 80A39648  C0 3F 0A B4 */	lfs f1, 0xab4(r31)
/* 80A3964C  4B 5D 65 31 */	bl setMorf__13mDoExt_morf_cFf
/* 80A39650  48 00 00 20 */	b lbl_80A39670
lbl_80A39654:
/* 80A39654  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A39658  4B 5D 65 25 */	bl setMorf__13mDoExt_morf_cFf
/* 80A3965C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80A39660  28 03 00 00 */	cmplwi r3, 0
/* 80A39664  41 82 00 0C */	beq lbl_80A39670
/* 80A39668  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A3966C  4B 5D 65 11 */	bl setMorf__13mDoExt_morf_cFf
lbl_80A39670:
/* 80A39670  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A39674  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A39678  7C 08 03 A6 */	mtlr r0
/* 80A3967C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A39680  4E 80 00 20 */	blr 
