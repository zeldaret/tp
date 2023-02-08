lbl_80D0D8E8:
/* 80D0D8E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D0D8EC  7C 08 02 A6 */	mflr r0
/* 80D0D8F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0D8F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D0D8F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D0D8FC  7C 7E 1B 78 */	mr r30, r3
/* 80D0D900  7C 9F 23 78 */	mr r31, r4
/* 80D0D904  48 00 02 8D */	bl event_proc_call__13daObjThDoor_cFv
/* 80D0D908  A8 7E 06 08 */	lha r3, 0x608(r30)
/* 80D0D90C  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80D0D910  7C 03 00 50 */	subf r0, r3, r0
/* 80D0D914  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80D0D918  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 80D0D91C  28 00 00 00 */	cmplwi r0, 0
/* 80D0D920  40 82 00 68 */	bne lbl_80D0D988
/* 80D0D924  A8 7E 04 CA */	lha r3, 0x4ca(r30)
/* 80D0D928  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80D0D92C  7C 03 00 00 */	cmpw r3, r0
/* 80D0D930  41 82 00 58 */	beq lbl_80D0D988
/* 80D0D934  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D0D938  7C 03 07 74 */	extsb r3, r0
/* 80D0D93C  4B 31 F7 31 */	bl dComIfGp_getReverb__Fi
/* 80D0D940  7C 67 1B 78 */	mr r7, r3
/* 80D0D944  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008026A@ha */
/* 80D0D948  38 03 02 6A */	addi r0, r3, 0x026A /* 0x0008026A@l */
/* 80D0D94C  90 01 00 08 */	stw r0, 8(r1)
/* 80D0D950  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D0D954  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D0D958  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0D95C  38 81 00 08 */	addi r4, r1, 8
/* 80D0D960  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D0D964  38 C0 00 00 */	li r6, 0
/* 80D0D968  3D 00 80 D1 */	lis r8, lit_3765@ha /* 0x80D0E600@ha */
/* 80D0D96C  C0 28 E6 00 */	lfs f1, lit_3765@l(r8)  /* 0x80D0E600@l */
/* 80D0D970  FC 40 08 90 */	fmr f2, f1
/* 80D0D974  3D 00 80 D1 */	lis r8, lit_3766@ha /* 0x80D0E604@ha */
/* 80D0D978  C0 68 E6 04 */	lfs f3, lit_3766@l(r8)  /* 0x80D0E604@l */
/* 80D0D97C  FC 80 18 90 */	fmr f4, f3
/* 80D0D980  39 00 00 00 */	li r8, 0
/* 80D0D984  4B 59 EB 89 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D0D988:
/* 80D0D988  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80D0D98C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D0D990  7F C3 F3 78 */	mr r3, r30
/* 80D0D994  4B FF FC C1 */	bl setBaseMtx__13daObjThDoor_cFv
/* 80D0D998  38 60 00 01 */	li r3, 1
/* 80D0D99C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D0D9A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D0D9A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D0D9A8  7C 08 03 A6 */	mtlr r0
/* 80D0D9AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D0D9B0  4E 80 00 20 */	blr 
