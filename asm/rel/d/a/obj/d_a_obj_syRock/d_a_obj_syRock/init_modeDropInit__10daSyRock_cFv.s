lbl_80D02FB8:
/* 80D02FB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D02FBC  7C 08 02 A6 */	mflr r0
/* 80D02FC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D02FC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D02FC8  7C 7F 1B 78 */	mr r31, r3
/* 80D02FCC  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80D02FD0  7C 03 07 74 */	extsb r3, r0
/* 80D02FD4  4B 32 A0 99 */	bl dComIfGp_getReverb__Fi
/* 80D02FD8  7C 67 1B 78 */	mr r7, r3
/* 80D02FDC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080164@ha */
/* 80D02FE0  38 03 01 64 */	addi r0, r3, 0x0164 /* 0x00080164@l */
/* 80D02FE4  90 01 00 08 */	stw r0, 8(r1)
/* 80D02FE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D02FEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D02FF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D02FF4  38 81 00 08 */	addi r4, r1, 8
/* 80D02FF8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D02FFC  38 C0 00 00 */	li r6, 0
/* 80D03000  3D 00 80 D0 */	lis r8, lit_4014@ha /* 0x80D04000@ha */
/* 80D03004  C0 28 40 00 */	lfs f1, lit_4014@l(r8)  /* 0x80D04000@l */
/* 80D03008  FC 40 08 90 */	fmr f2, f1
/* 80D0300C  3D 00 80 D0 */	lis r8, lit_4015@ha /* 0x80D04004@ha */
/* 80D03010  C0 68 40 04 */	lfs f3, lit_4015@l(r8)  /* 0x80D04004@l */
/* 80D03014  FC 80 18 90 */	fmr f4, f3
/* 80D03018  39 00 00 00 */	li r8, 0
/* 80D0301C  4B 5A 89 69 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D03020  80 1F 06 34 */	lwz r0, 0x634(r31)
/* 80D03024  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D03028  90 1F 06 34 */	stw r0, 0x634(r31)
/* 80D0302C  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80D03030  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D03034  90 1F 06 20 */	stw r0, 0x620(r31)
/* 80D03038  38 00 00 00 */	li r0, 0
/* 80D0303C  98 1F 07 44 */	stb r0, 0x744(r31)
/* 80D03040  3C 60 80 D0 */	lis r3, searchWaterPillar__10daSyRock_cFPvPv@ha /* 0x80D030A8@ha */
/* 80D03044  38 63 30 A8 */	addi r3, r3, searchWaterPillar__10daSyRock_cFPvPv@l /* 0x80D030A8@l */
/* 80D03048  7F E4 FB 78 */	mr r4, r31
/* 80D0304C  4B 31 67 AD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D03050  90 7F 09 94 */	stw r3, 0x994(r31)
/* 80D03054  38 00 00 01 */	li r0, 1
/* 80D03058  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 80D0305C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D03060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D03064  7C 08 03 A6 */	mtlr r0
/* 80D03068  38 21 00 20 */	addi r1, r1, 0x20
/* 80D0306C  4E 80 00 20 */	blr 
