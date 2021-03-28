lbl_801FA9F0:
/* 801FA9F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA9F4  7C 08 02 A6 */	mflr r0
/* 801FA9F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA9FC  38 00 00 A5 */	li r0, 0xa5
/* 801FAA00  90 01 00 08 */	stw r0, 8(r1)
/* 801FAA04  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801FAA08  38 81 00 08 */	addi r4, r1, 8
/* 801FAA0C  38 A0 00 00 */	li r5, 0
/* 801FAA10  38 C0 00 00 */	li r6, 0
/* 801FAA14  38 E0 00 00 */	li r7, 0
/* 801FAA18  C0 22 AA C4 */	lfs f1, lit_4386(r2)
/* 801FAA1C  FC 40 08 90 */	fmr f2, f1
/* 801FAA20  C0 62 AA C8 */	lfs f3, lit_4387(r2)
/* 801FAA24  FC 80 18 90 */	fmr f4, f3
/* 801FAA28  39 00 00 00 */	li r8, 0
/* 801FAA2C  48 0B 0F 59 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801FAA30  48 02 3F A1 */	bl dMeter2Info_set2DVibration__Fv
/* 801FAA34  48 00 23 D5 */	bl dMw_fade_out__5dMw_cFv
/* 801FAA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FAA3C  7C 08 03 A6 */	mtlr r0
/* 801FAA40  38 21 00 10 */	addi r1, r1, 0x10
/* 801FAA44  4E 80 00 20 */	blr 
