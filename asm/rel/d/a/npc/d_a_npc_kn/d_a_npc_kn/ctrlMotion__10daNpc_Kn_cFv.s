lbl_80A39684:
/* 80A39684  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A39688  7C 08 02 A6 */	mflr r0
/* 80A3968C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A39690  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A39694  7C 7F 1B 78 */	mr r31, r3
/* 80A39698  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A3969C  A0 9F 0E 26 */	lhz r4, 0xe26(r31)
/* 80A396A0  38 A1 00 0C */	addi r5, r1, 0xc
/* 80A396A4  38 C1 00 08 */	addi r6, r1, 8
/* 80A396A8  4B 70 C2 19 */	bl play__22daNpcT_MotionSeqMngr_cFUsPiPf
/* 80A396AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A396B0  41 82 00 74 */	beq lbl_80A39724
/* 80A396B4  38 A0 00 00 */	li r5, 0
/* 80A396B8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A396BC  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A396C0  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A396C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A396C8  40 80 00 08 */	bge lbl_80A396D0
/* 80A396CC  38 A0 00 01 */	li r5, 1
lbl_80A396D0:
/* 80A396D0  7F E3 FB 78 */	mr r3, r31
/* 80A396D4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A396D8  3C C0 80 A4 */	lis r6, lit_4204@ha /* 0x80A40900@ha */
/* 80A396DC  C0 06 09 00 */	lfs f0, lit_4204@l(r6)  /* 0x80A40900@l */
/* 80A396E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A396E4  40 80 00 08 */	bge lbl_80A396EC
/* 80A396E8  C0 3F 0A B8 */	lfs f1, 0xab8(r31)
lbl_80A396EC:
/* 80A396EC  48 00 10 D5 */	bl setMotionAnm__10daNpc_Kn_cFifi
/* 80A396F0  88 1F 0A BC */	lbz r0, 0xabc(r31)
/* 80A396F4  28 00 00 00 */	cmplwi r0, 0
/* 80A396F8  41 82 00 2C */	beq lbl_80A39724
/* 80A396FC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A39700  3C 80 80 A4 */	lis r4, lit_4204@ha /* 0x80A40900@ha */
/* 80A39704  C0 24 09 00 */	lfs f1, lit_4204@l(r4)  /* 0x80A40900@l */
/* 80A39708  4B 5D 64 75 */	bl setMorf__13mDoExt_morf_cFf
/* 80A3970C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80A39710  28 03 00 00 */	cmplwi r3, 0
/* 80A39714  41 82 00 10 */	beq lbl_80A39724
/* 80A39718  3C 80 80 A4 */	lis r4, lit_4204@ha /* 0x80A40900@ha */
/* 80A3971C  C0 24 09 00 */	lfs f1, lit_4204@l(r4)  /* 0x80A40900@l */
/* 80A39720  4B 5D 64 5D */	bl setMorf__13mDoExt_morf_cFf
lbl_80A39724:
/* 80A39724  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A39728  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A3972C  7C 08 03 A6 */	mtlr r0
/* 80A39730  38 21 00 20 */	addi r1, r1, 0x20
/* 80A39734  4E 80 00 20 */	blr 
