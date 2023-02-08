lbl_80C8C8E4:
/* 80C8C8E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8C8E8  7C 08 02 A6 */	mflr r0
/* 80C8C8EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8C8F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C8C8F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C8C8F8  7C 7E 1B 78 */	mr r30, r3
/* 80C8C8FC  3C 60 80 C9 */	lis r3, lit_3628@ha /* 0x80C8CBF0@ha */
/* 80C8C900  3B E3 CB F0 */	addi r31, r3, lit_3628@l /* 0x80C8CBF0@l */
/* 80C8C904  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C8C908  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C8C90C  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80C8C910  C0 7E 05 B4 */	lfs f3, 0x5b4(r30)
/* 80C8C914  C0 9F 00 3C */	lfs f4, 0x3c(r31)
/* 80C8C918  4B 5E 30 65 */	bl cLib_addCalc__FPfffff
/* 80C8C91C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C8C920  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C8C924  40 82 00 58 */	bne lbl_80C8C97C
/* 80C8C928  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8C92C  7C 03 07 74 */	extsb r3, r0
/* 80C8C930  4B 3A 07 3D */	bl dComIfGp_getReverb__Fi
/* 80C8C934  7C 67 1B 78 */	mr r7, r3
/* 80C8C938  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008020E@ha */
/* 80C8C93C  38 03 02 0E */	addi r0, r3, 0x020E /* 0x0008020E@l */
/* 80C8C940  90 01 00 08 */	stw r0, 8(r1)
/* 80C8C944  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C8C948  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C8C94C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8C950  38 81 00 08 */	addi r4, r1, 8
/* 80C8C954  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 80C8C958  38 C0 00 00 */	li r6, 0
/* 80C8C95C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80C8C960  FC 40 08 90 */	fmr f2, f1
/* 80C8C964  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80C8C968  FC 80 18 90 */	fmr f4, f3
/* 80C8C96C  39 00 00 00 */	li r8, 0
/* 80C8C970  4B 61 F0 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8C974  7F C3 F3 78 */	mr r3, r30
/* 80C8C978  4B FF F8 ED */	bl init_modeWait__11daUdFloor_cFv
lbl_80C8C97C:
/* 80C8C97C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C8C980  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C8C984  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8C988  7C 08 03 A6 */	mtlr r0
/* 80C8C98C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8C990  4E 80 00 20 */	blr 
