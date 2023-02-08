lbl_80D05A54:
/* 80D05A54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D05A58  7C 08 02 A6 */	mflr r0
/* 80D05A5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D05A60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D05A64  7C 7F 1B 78 */	mr r31, r3
/* 80D05A68  88 03 13 86 */	lbz r0, 0x1386(r3)
/* 80D05A6C  28 00 00 00 */	cmplwi r0, 0
/* 80D05A70  40 82 00 14 */	bne lbl_80D05A84
/* 80D05A74  3C 60 80 D0 */	lis r3, l_HIO@ha /* 0x80D0633C@ha */
/* 80D05A78  38 63 63 3C */	addi r3, r3, l_HIO@l /* 0x80D0633C@l */
/* 80D05A7C  88 03 00 70 */	lbz r0, 0x70(r3)
/* 80D05A80  98 1F 13 86 */	stb r0, 0x1386(r31)
lbl_80D05A84:
/* 80D05A84  3C 60 80 D0 */	lis r3, l_HIO@ha /* 0x80D0633C@ha */
/* 80D05A88  38 63 63 3C */	addi r3, r3, l_HIO@l /* 0x80D0633C@l */
/* 80D05A8C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80D05A90  D0 1F 13 94 */	stfs f0, 0x1394(r31)
/* 80D05A94  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D05A98  D0 1F 13 9C */	stfs f0, 0x139c(r31)
/* 80D05A9C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80D05AA0  D0 1F 13 98 */	stfs f0, 0x1398(r31)
/* 80D05AA4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D05AA8  D0 1F 13 A0 */	stfs f0, 0x13a0(r31)
/* 80D05AAC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80D05AB0  D0 1F 13 A4 */	stfs f0, 0x13a4(r31)
/* 80D05AB4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80D05AB8  D0 1F 13 A8 */	stfs f0, 0x13a8(r31)
/* 80D05ABC  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80D05AC0  D0 1F 13 C0 */	stfs f0, 0x13c0(r31)
/* 80D05AC4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80D05AC8  D0 1F 13 B8 */	stfs f0, 0x13b8(r31)
/* 80D05ACC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80D05AD0  D0 1F 13 BC */	stfs f0, 0x13bc(r31)
/* 80D05AD4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80D05AD8  D0 1F 13 C4 */	stfs f0, 0x13c4(r31)
/* 80D05ADC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80D05AE0  D0 1F 13 C8 */	stfs f0, 0x13c8(r31)
/* 80D05AE4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80D05AE8  D0 1F 13 CC */	stfs f0, 0x13cc(r31)
/* 80D05AEC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D05AF0  7C 03 07 74 */	extsb r3, r0
/* 80D05AF4  4B 32 75 79 */	bl dComIfGp_getReverb__Fi
/* 80D05AF8  7C 67 1B 78 */	mr r7, r3
/* 80D05AFC  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008013E@ha */
/* 80D05B00  38 03 01 3E */	addi r0, r3, 0x013E /* 0x0008013E@l */
/* 80D05B04  90 01 00 08 */	stw r0, 8(r1)
/* 80D05B08  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D05B0C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D05B10  80 63 00 00 */	lwz r3, 0(r3)
/* 80D05B14  38 81 00 08 */	addi r4, r1, 8
/* 80D05B18  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D05B1C  38 C0 00 00 */	li r6, 0
/* 80D05B20  3D 00 80 D0 */	lis r8, lit_3658@ha /* 0x80D060FC@ha */
/* 80D05B24  C0 28 60 FC */	lfs f1, lit_3658@l(r8)  /* 0x80D060FC@l */
/* 80D05B28  FC 40 08 90 */	fmr f2, f1
/* 80D05B2C  3D 00 80 D0 */	lis r8, lit_3981@ha /* 0x80D06190@ha */
/* 80D05B30  C0 68 61 90 */	lfs f3, lit_3981@l(r8)  /* 0x80D06190@l */
/* 80D05B34  FC 80 18 90 */	fmr f4, f3
/* 80D05B38  39 00 00 00 */	li r8, 0
/* 80D05B3C  4B 5A 5E 49 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D05B40  38 00 00 01 */	li r0, 1
/* 80D05B44  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80D05B48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D05B4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D05B50  7C 08 03 A6 */	mtlr r0
/* 80D05B54  38 21 00 20 */	addi r1, r1, 0x20
/* 80D05B58  4E 80 00 20 */	blr 
