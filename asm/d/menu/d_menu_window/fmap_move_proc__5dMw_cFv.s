lbl_801FB298:
/* 801FB298  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FB29C  7C 08 02 A6 */	mflr r0
/* 801FB2A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FB2A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801FB2A8  7C 7F 1B 78 */	mr r31, r3
/* 801FB2AC  80 63 01 1C */	lwz r3, 0x11c(r3)
/* 801FB2B0  4B FC C1 F9 */	bl _move__12dMenu_Fmap_cFv
/* 801FB2B4  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801FB2B8  80 03 00 04 */	lwz r0, 4(r3)
/* 801FB2BC  2C 00 00 01 */	cmpwi r0, 1
/* 801FB2C0  40 82 00 98 */	bne lbl_801FB358
/* 801FB2C4  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 801FB2C8  38 9F 01 4B */	addi r4, r31, 0x14b
/* 801FB2CC  4B FC C5 25 */	bl getNextStatus__12dMenu_Fmap_cFPUc
/* 801FB2D0  98 7F 01 46 */	stb r3, 0x146(r31)
/* 801FB2D4  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801FB2D8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801FB2DC  88 03 02 F9 */	lbz r0, 0x2f9(r3)
/* 801FB2E0  28 00 00 00 */	cmplwi r0, 0
/* 801FB2E4  41 82 00 40 */	beq lbl_801FB324
/* 801FB2E8  38 00 00 09 */	li r0, 9
/* 801FB2EC  98 1F 01 46 */	stb r0, 0x146(r31)
/* 801FB2F0  38 00 00 BB */	li r0, 0xbb
/* 801FB2F4  90 01 00 08 */	stw r0, 8(r1)
/* 801FB2F8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801FB2FC  38 81 00 08 */	addi r4, r1, 8
/* 801FB300  38 A0 00 00 */	li r5, 0
/* 801FB304  38 C0 00 00 */	li r6, 0
/* 801FB308  38 E0 00 00 */	li r7, 0
/* 801FB30C  C0 22 AA C4 */	lfs f1, lit_4386(r2)
/* 801FB310  FC 40 08 90 */	fmr f2, f1
/* 801FB314  C0 62 AA C8 */	lfs f3, lit_4387(r2)
/* 801FB318  FC 80 18 90 */	fmr f4, f3
/* 801FB31C  39 00 00 00 */	li r8, 0
/* 801FB320  48 0B 06 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801FB324:
/* 801FB324  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FB328  38 83 01 88 */	addi r4, r3, g_meter2_info@l
/* 801FB32C  80 64 00 20 */	lwz r3, 0x20(r4)
/* 801FB330  28 03 00 00 */	cmplwi r3, 0
/* 801FB334  41 82 00 24 */	beq lbl_801FB358
/* 801FB338  88 04 00 BF */	lbz r0, 0xbf(r4)
/* 801FB33C  28 00 00 01 */	cmplwi r0, 1
/* 801FB340  40 82 00 0C */	bne lbl_801FB34C
/* 801FB344  48 01 25 31 */	bl setDispPosInsideFlg_SE_On__11dMeterMap_cFv
/* 801FB348  48 00 00 10 */	b lbl_801FB358
lbl_801FB34C:
/* 801FB34C  28 00 00 00 */	cmplwi r0, 0
/* 801FB350  40 82 00 08 */	bne lbl_801FB358
/* 801FB354  48 01 25 69 */	bl setDispPosOutsideFlg_SE_On__11dMeterMap_cFv
lbl_801FB358:
/* 801FB358  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801FB35C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FB360  7C 08 03 A6 */	mtlr r0
/* 801FB364  38 21 00 20 */	addi r1, r1, 0x20
/* 801FB368  4E 80 00 20 */	blr 
