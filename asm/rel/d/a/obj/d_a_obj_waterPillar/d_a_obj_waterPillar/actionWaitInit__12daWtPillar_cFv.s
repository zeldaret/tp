lbl_80D2D4AC:
/* 80D2D4AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D2D4B0  7C 08 02 A6 */	mflr r0
/* 80D2D4B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D2D4B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D2D4BC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D2D4C0  7C 7F 1B 78 */	mr r31, r3
/* 80D2D4C4  3C 60 80 D3 */	lis r3, lit_3645@ha
/* 80D2D4C8  3B C3 E7 70 */	addi r30, r3, lit_3645@l
/* 80D2D4CC  C0 7E 00 AC */	lfs f3, 0xac(r30)
/* 80D2D4D0  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 80D2D4D4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D2D4D8  54 00 A6 FE */	rlwinm r0, r0, 0x14, 0x1b, 0x1f
/* 80D2D4DC  C8 3E 00 98 */	lfd f1, 0x98(r30)
/* 80D2D4E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D2D4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2D4E8  3C 00 43 30 */	lis r0, 0x4330
/* 80D2D4EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D2D4F0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D2D4F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D2D4F8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D2D4FC  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D2D500  FC 00 00 1E */	fctiwz f0, f0
/* 80D2D504  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D2D508  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D2D50C  B0 1F 0B 02 */	sth r0, 0xb02(r31)
/* 80D2D510  38 00 00 00 */	li r0, 0
/* 80D2D514  98 1F 0B 44 */	stb r0, 0xb44(r31)
/* 80D2D518  98 1F 0B 45 */	stb r0, 0xb45(r31)
/* 80D2D51C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D2D520  7C 03 07 74 */	extsb r3, r0
/* 80D2D524  4B 2F FB 48 */	b dComIfGp_getReverb__Fi
/* 80D2D528  7C 67 1B 78 */	mr r7, r3
/* 80D2D52C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080182@ha */
/* 80D2D530  38 03 01 82 */	addi r0, r3, 0x0182 /* 0x00080182@l */
/* 80D2D534  90 01 00 08 */	stw r0, 8(r1)
/* 80D2D538  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D2D53C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D2D540  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2D544  38 81 00 08 */	addi r4, r1, 8
/* 80D2D548  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D2D54C  38 C0 00 00 */	li r6, 0
/* 80D2D550  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D2D554  FC 40 08 90 */	fmr f2, f1
/* 80D2D558  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80D2D55C  FC 80 18 90 */	fmr f4, f3
/* 80D2D560  39 00 00 00 */	li r8, 0
/* 80D2D564  4B 57 E4 20 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2D568  38 00 00 01 */	li r0, 1
/* 80D2D56C  98 1F 0B 00 */	stb r0, 0xb00(r31)
/* 80D2D570  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D2D574  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D2D578  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D2D57C  7C 08 03 A6 */	mtlr r0
/* 80D2D580  38 21 00 30 */	addi r1, r1, 0x30
/* 80D2D584  4E 80 00 20 */	blr 
