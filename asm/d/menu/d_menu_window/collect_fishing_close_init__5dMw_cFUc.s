lbl_801FA798:
/* 801FA798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA79C  7C 08 02 A6 */	mflr r0
/* 801FA7A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA7A4  38 00 00 A5 */	li r0, 0xa5
/* 801FA7A8  90 01 00 08 */	stw r0, 8(r1)
/* 801FA7AC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801FA7B0  38 81 00 08 */	addi r4, r1, 8
/* 801FA7B4  38 A0 00 00 */	li r5, 0
/* 801FA7B8  38 C0 00 00 */	li r6, 0
/* 801FA7BC  38 E0 00 00 */	li r7, 0
/* 801FA7C0  C0 22 AA C4 */	lfs f1, lit_4386(r2)
/* 801FA7C4  FC 40 08 90 */	fmr f2, f1
/* 801FA7C8  C0 62 AA C8 */	lfs f3, lit_4387(r2)
/* 801FA7CC  FC 80 18 90 */	fmr f4, f3
/* 801FA7D0  39 00 00 00 */	li r8, 0
/* 801FA7D4  48 0B 11 B1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801FA7D8  48 02 41 F9 */	bl dMeter2Info_set2DVibration__Fv
/* 801FA7DC  48 00 26 2D */	bl dMw_fade_out__5dMw_cFv
/* 801FA7E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA7E4  7C 08 03 A6 */	mtlr r0
/* 801FA7E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA7EC  4E 80 00 20 */	blr 
