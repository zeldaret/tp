lbl_80CBF1EC:
/* 80CBF1EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CBF1F0  7C 08 02 A6 */	mflr r0
/* 80CBF1F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CBF1F8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CBF1FC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CBF200  7C 7E 1B 78 */	mr r30, r3
/* 80CBF204  3C 60 80 CC */	lis r3, lit_3626@ha /* 0x80CBF668@ha */
/* 80CBF208  3B E3 F6 68 */	addi r31, r3, lit_3626@l /* 0x80CBF668@l */
/* 80CBF20C  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80CBF210  28 00 00 00 */	cmplwi r0, 0
/* 80CBF214  41 82 01 D8 */	beq lbl_80CBF3EC
/* 80CBF218  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CBF21C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80CBF220  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80CBF224  38 9E 05 B2 */	addi r4, r30, 0x5b2
/* 80CBF228  4B 34 D9 D9 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 80CBF22C  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 80CBF230  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80CBF234  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80CBF238  4B 34 E1 F1 */	bl play__14mDoExt_baseAnmFv
/* 80CBF23C  2C 03 00 00 */	cmpwi r3, 0
/* 80CBF240  41 82 00 E0 */	beq lbl_80CBF320
/* 80CBF244  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 80CBF248  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80CBF24C  A8 1E 05 C2 */	lha r0, 0x5c2(r30)
/* 80CBF250  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 80CBF254  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CBF258  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBF25C  3C 00 43 30 */	lis r0, 0x4330
/* 80CBF260  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CBF264  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CBF268  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CBF26C  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80CBF270  38 00 00 00 */	li r0, 0
/* 80CBF274  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 80CBF278  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 80CBF27C  28 03 00 00 */	cmplwi r3, 0
/* 80CBF280  41 82 00 2C */	beq lbl_80CBF2AC
/* 80CBF284  4B 5A 8F 51 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80CBF288  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CBF28C  41 82 00 20 */	beq lbl_80CBF2AC
/* 80CBF290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBF294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBF298  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CBF29C  80 9E 05 DC */	lwz r4, 0x5dc(r30)
/* 80CBF2A0  4B 3B 4F B1 */	bl Release__4cBgSFP9dBgW_Base
/* 80CBF2A4  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 80CBF2A8  4B 3B C7 19 */	bl Move__4dBgWFv
lbl_80CBF2AC:
/* 80CBF2AC  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80CBF2B0  28 00 00 00 */	cmplwi r0, 0
/* 80CBF2B4  40 82 00 10 */	bne lbl_80CBF2C4
/* 80CBF2B8  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80CBF2BC  28 00 00 00 */	cmplwi r0, 0
/* 80CBF2C0  41 82 00 3C */	beq lbl_80CBF2FC
lbl_80CBF2C4:
/* 80CBF2C4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80CBF2C8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CBF2CC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CBF2D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CBF2D4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CBF2D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBF2DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBF2E0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CBF2E4  3C 80 80 CC */	lis r4, l_HIO@ha /* 0x80CBF794@ha */
/* 80CBF2E8  38 84 F7 94 */	addi r4, r4, l_HIO@l /* 0x80CBF794@l */
/* 80CBF2EC  88 84 00 04 */	lbz r4, 4(r4)
/* 80CBF2F0  38 A0 00 0F */	li r5, 0xf
/* 80CBF2F4  38 C1 00 10 */	addi r6, r1, 0x10
/* 80CBF2F8  4B 3B 07 2D */	bl StartShock__12dVibration_cFii4cXyz
lbl_80CBF2FC:
/* 80CBF2FC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80CBF300  54 00 04 26 */	rlwinm r0, r0, 0, 0x10, 0x13
/* 80CBF304  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80CBF308  7F C3 F3 78 */	mr r3, r30
/* 80CBF30C  4B FF F7 19 */	bl setBaseMtx__13daRotBridge_cFv
/* 80CBF310  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 80CBF314  68 00 00 01 */	xori r0, r0, 1
/* 80CBF318  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 80CBF31C  48 00 00 D0 */	b lbl_80CBF3EC
lbl_80CBF320:
/* 80CBF320  C0 5E 05 CC */	lfs f2, 0x5cc(r30)
/* 80CBF324  A8 1E 05 C4 */	lha r0, 0x5c4(r30)
/* 80CBF328  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 80CBF32C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CBF330  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBF334  3C 00 43 30 */	lis r0, 0x4330
/* 80CBF338  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CBF33C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CBF340  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CBF344  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80CBF348  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CBF34C  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80CBF350  40 82 00 50 */	bne lbl_80CBF3A0
/* 80CBF354  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CBF358  7C 03 07 74 */	extsb r3, r0
/* 80CBF35C  4B 36 DD 11 */	bl dComIfGp_getReverb__Fi
/* 80CBF360  7C 67 1B 78 */	mr r7, r3
/* 80CBF364  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080118@ha */
/* 80CBF368  38 03 01 18 */	addi r0, r3, 0x0118 /* 0x00080118@l */
/* 80CBF36C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBF370  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CBF374  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CBF378  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBF37C  38 81 00 0C */	addi r4, r1, 0xc
/* 80CBF380  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CBF384  38 C0 00 00 */	li r6, 0
/* 80CBF388  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80CBF38C  FC 40 08 90 */	fmr f2, f1
/* 80CBF390  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80CBF394  FC 80 18 90 */	fmr f4, f3
/* 80CBF398  39 00 00 00 */	li r8, 0
/* 80CBF39C  4B 5E C5 E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CBF3A0:
/* 80CBF3A0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CBF3A4  7C 03 07 74 */	extsb r3, r0
/* 80CBF3A8  4B 36 DC C5 */	bl dComIfGp_getReverb__Fi
/* 80CBF3AC  7C 67 1B 78 */	mr r7, r3
/* 80CBF3B0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080117@ha */
/* 80CBF3B4  38 03 01 17 */	addi r0, r3, 0x0117 /* 0x00080117@l */
/* 80CBF3B8  90 01 00 08 */	stw r0, 8(r1)
/* 80CBF3BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CBF3C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CBF3C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBF3C8  38 81 00 08 */	addi r4, r1, 8
/* 80CBF3CC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CBF3D0  38 C0 00 00 */	li r6, 0
/* 80CBF3D4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80CBF3D8  FC 40 08 90 */	fmr f2, f1
/* 80CBF3DC  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80CBF3E0  FC 80 18 90 */	fmr f4, f3
/* 80CBF3E4  39 00 00 00 */	li r8, 0
/* 80CBF3E8  4B 5E D1 25 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CBF3EC:
/* 80CBF3EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CBF3F0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CBF3F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CBF3F8  7C 08 03 A6 */	mtlr r0
/* 80CBF3FC  38 21 00 30 */	addi r1, r1, 0x30
/* 80CBF400  4E 80 00 20 */	blr 
