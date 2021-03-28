lbl_801FA6E0:
/* 801FA6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA6E4  7C 08 02 A6 */	mflr r0
/* 801FA6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA6EC  38 00 00 A5 */	li r0, 0xa5
/* 801FA6F0  90 01 00 08 */	stw r0, 8(r1)
/* 801FA6F4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801FA6F8  38 81 00 08 */	addi r4, r1, 8
/* 801FA6FC  38 A0 00 00 */	li r5, 0
/* 801FA700  38 C0 00 00 */	li r6, 0
/* 801FA704  38 E0 00 00 */	li r7, 0
/* 801FA708  C0 22 AA C4 */	lfs f1, lit_4386(r2)
/* 801FA70C  FC 40 08 90 */	fmr f2, f1
/* 801FA710  C0 62 AA C8 */	lfs f3, lit_4387(r2)
/* 801FA714  FC 80 18 90 */	fmr f4, f3
/* 801FA718  39 00 00 00 */	li r8, 0
/* 801FA71C  48 0B 12 69 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801FA720  48 02 42 B1 */	bl dMeter2Info_set2DVibration__Fv
/* 801FA724  48 00 26 E5 */	bl dMw_fade_out__5dMw_cFv
/* 801FA728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA72C  7C 08 03 A6 */	mtlr r0
/* 801FA730  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA734  4E 80 00 20 */	blr 
