lbl_801FA90C:
/* 801FA90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA910  7C 08 02 A6 */	mflr r0
/* 801FA914  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA918  38 00 00 A5 */	li r0, 0xa5
/* 801FA91C  90 01 00 08 */	stw r0, 8(r1)
/* 801FA920  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801FA924  38 81 00 08 */	addi r4, r1, 8
/* 801FA928  38 A0 00 00 */	li r5, 0
/* 801FA92C  38 C0 00 00 */	li r6, 0
/* 801FA930  38 E0 00 00 */	li r7, 0
/* 801FA934  C0 22 AA C4 */	lfs f1, lit_4386(r2)
/* 801FA938  FC 40 08 90 */	fmr f2, f1
/* 801FA93C  C0 62 AA C8 */	lfs f3, lit_4387(r2)
/* 801FA940  FC 80 18 90 */	fmr f4, f3
/* 801FA944  39 00 00 00 */	li r8, 0
/* 801FA948  48 0B 10 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801FA94C  48 02 40 85 */	bl dMeter2Info_set2DVibration__Fv
/* 801FA950  48 00 24 B9 */	bl dMw_fade_out__5dMw_cFv
/* 801FA954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA958  7C 08 03 A6 */	mtlr r0
/* 801FA95C  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA960  4E 80 00 20 */	blr 
