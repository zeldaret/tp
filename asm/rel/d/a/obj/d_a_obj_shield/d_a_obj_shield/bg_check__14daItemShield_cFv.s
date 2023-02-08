lbl_80CD75EC:
/* 80CD75EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CD75F0  7C 08 02 A6 */	mflr r0
/* 80CD75F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD75F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CD75FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CD7600  7C 7F 1B 78 */	mr r31, r3
/* 80CD7604  3C 60 80 CE */	lis r3, l_cyl_src@ha /* 0x80CD8274@ha */
/* 80CD7608  3B C3 82 74 */	addi r30, r3, l_cyl_src@l /* 0x80CD8274@l */
/* 80CD760C  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80CD7610  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80CD7614  41 82 00 34 */	beq lbl_80CD7648
/* 80CD7618  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80CD761C  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80CD7620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD7624  40 81 00 14 */	ble lbl_80CD7638
/* 80CD7628  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80CD762C  38 9F 07 64 */	addi r4, r31, 0x764
/* 80CD7630  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80CD7634  4B FF F4 25 */	bl Reflect__FP4cXyzRC13cBgS_PolyInfof
lbl_80CD7638:
/* 80CD7638  C0 3F 04 F8 */	lfs f1, 0x4f8(r31)
/* 80CD763C  C0 5F 05 00 */	lfs f2, 0x500(r31)
/* 80CD7640  4B 59 00 35 */	bl cM_atan2s__Fff
/* 80CD7644  B0 7F 04 DE */	sth r3, 0x4de(r31)
lbl_80CD7648:
/* 80CD7648  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80CD764C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80CD7650  41 82 00 CC */	beq lbl_80CD771C
/* 80CD7654  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80CD7658  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CD765C  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80CD7660  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CD7664  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 80CD7668  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CD766C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80CD7670  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80CD7674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD7678  40 81 00 14 */	ble lbl_80CD768C
/* 80CD767C  38 61 00 0C */	addi r3, r1, 0xc
/* 80CD7680  38 9F 07 64 */	addi r4, r31, 0x764
/* 80CD7684  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80CD7688  4B FF F3 D1 */	bl Reflect__FP4cXyzRC13cBgS_PolyInfof
lbl_80CD768C:
/* 80CD768C  C0 1F 09 3C */	lfs f0, 0x93c(r31)
/* 80CD7690  FC 20 00 50 */	fneg f1, f0
/* 80CD7694  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80CD7698  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CD769C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CD76A0  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80CD76A4  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80CD76A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD76AC  40 80 00 0C */	bge lbl_80CD76B8
/* 80CD76B0  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CD76B4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_80CD76B8:
/* 80CD76B8  88 7F 09 36 */	lbz r3, 0x936(r31)
/* 80CD76BC  38 03 00 01 */	addi r0, r3, 1
/* 80CD76C0  98 1F 09 36 */	stb r0, 0x936(r31)
/* 80CD76C4  88 1F 09 36 */	lbz r0, 0x936(r31)
/* 80CD76C8  28 00 00 01 */	cmplwi r0, 1
/* 80CD76CC  40 82 00 50 */	bne lbl_80CD771C
/* 80CD76D0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CD76D4  7C 03 07 74 */	extsb r3, r0
/* 80CD76D8  4B 35 59 95 */	bl dComIfGp_getReverb__Fi
/* 80CD76DC  7C 67 1B 78 */	mr r7, r3
/* 80CD76E0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080108@ha */
/* 80CD76E4  38 03 01 08 */	addi r0, r3, 0x0108 /* 0x00080108@l */
/* 80CD76E8  90 01 00 08 */	stw r0, 8(r1)
/* 80CD76EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CD76F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CD76F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD76F8  38 81 00 08 */	addi r4, r1, 8
/* 80CD76FC  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CD7700  38 C0 00 00 */	li r6, 0
/* 80CD7704  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80CD7708  FC 40 08 90 */	fmr f2, f1
/* 80CD770C  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80CD7710  FC 80 18 90 */	fmr f4, f3
/* 80CD7714  39 00 00 00 */	li r8, 0
/* 80CD7718  4B 5D 42 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CD771C:
/* 80CD771C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CD7720  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CD7724  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CD7728  7C 08 03 A6 */	mtlr r0
/* 80CD772C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CD7730  4E 80 00 20 */	blr 
