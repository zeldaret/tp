lbl_80CC8714:
/* 80CC8714  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC8718  7C 08 02 A6 */	mflr r0
/* 80CC871C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC8720  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CC8724  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CC8728  7C 7E 1B 78 */	mr r30, r3
/* 80CC872C  3C 80 80 CD */	lis r4, TKS_SET_POS@ha
/* 80CC8730  3B E4 91 88 */	addi r31, r4, TKS_SET_POS@l
/* 80CC8734  80 03 06 00 */	lwz r0, 0x600(r3)
/* 80CC8738  2C 00 00 23 */	cmpwi r0, 0x23
/* 80CC873C  40 82 00 68 */	bne lbl_80CC87A4
/* 80CC8740  A0 9E 06 14 */	lhz r4, 0x614(r30)
/* 80CC8744  38 A0 00 03 */	li r5, 3
/* 80CC8748  38 DF 00 14 */	addi r6, r31, 0x14
/* 80CC874C  38 FE 06 1C */	addi r7, r30, 0x61c
/* 80CC8750  48 00 02 E1 */	bl initEmtRt__11daSCannon_cFUsiPCUsPP14JPABaseEmitter
/* 80CC8754  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC8758  7C 03 07 74 */	extsb r3, r0
/* 80CC875C  4B 36 49 10 */	b dComIfGp_getReverb__Fi
/* 80CC8760  7C 67 1B 78 */	mr r7, r3
/* 80CC8764  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008024A@ha */
/* 80CC8768  38 03 02 4A */	addi r0, r3, 0x024A /* 0x0008024A@l */
/* 80CC876C  90 01 00 08 */	stw r0, 8(r1)
/* 80CC8770  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CC8774  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CC8778  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC877C  38 81 00 08 */	addi r4, r1, 8
/* 80CC8780  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CC8784  38 C0 00 00 */	li r6, 0
/* 80CC8788  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80CC878C  FC 40 08 90 */	fmr f2, f1
/* 80CC8790  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80CC8794  FC 80 18 90 */	fmr f4, f3
/* 80CC8798  39 00 00 00 */	li r8, 0
/* 80CC879C  4B 5E 31 E8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CC87A0  48 00 00 18 */	b lbl_80CC87B8
lbl_80CC87A4:
/* 80CC87A4  40 80 00 14 */	bge lbl_80CC87B8
/* 80CC87A8  A0 9E 06 14 */	lhz r4, 0x614(r30)
/* 80CC87AC  38 A0 00 03 */	li r5, 3
/* 80CC87B0  38 DE 06 1C */	addi r6, r30, 0x61c
/* 80CC87B4  48 00 03 AD */	bl exeEmtRt__11daSCannon_cFUsiPP14JPABaseEmitter
lbl_80CC87B8:
/* 80CC87B8  38 7E 06 00 */	addi r3, r30, 0x600
/* 80CC87BC  48 00 07 59 */	bl func_80CC8F14
/* 80CC87C0  2C 03 00 00 */	cmpwi r3, 0
/* 80CC87C4  40 82 00 18 */	bne lbl_80CC87DC
/* 80CC87C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC87CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC87D0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CC87D4  80 9E 06 04 */	lwz r4, 0x604(r30)
/* 80CC87D8  4B 37 F9 A4 */	b cutEnd__16dEvent_manager_cFi
lbl_80CC87DC:
/* 80CC87DC  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 80CC87E0  4B 34 4C 48 */	b play__14mDoExt_baseAnmFv
/* 80CC87E4  80 7E 05 F4 */	lwz r3, 0x5f4(r30)
/* 80CC87E8  4B 34 4C 40 */	b play__14mDoExt_baseAnmFv
/* 80CC87EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CC87F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CC87F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC87F8  7C 08 03 A6 */	mtlr r0
/* 80CC87FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC8800  4E 80 00 20 */	blr 
