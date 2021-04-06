lbl_80D2D5C0:
/* 80D2D5C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2D5C4  7C 08 02 A6 */	mflr r0
/* 80D2D5C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2D5CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D2D5D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D2D5D4  7C 7F 1B 78 */	mr r31, r3
/* 80D2D5D8  3C 60 80 D3 */	lis r3, lit_3645@ha /* 0x80D2E770@ha */
/* 80D2D5DC  3B C3 E7 70 */	addi r30, r3, lit_3645@l /* 0x80D2E770@l */
/* 80D2D5E0  C0 7E 00 84 */	lfs f3, 0x84(r30)
/* 80D2D5E4  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 80D2D5E8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D2D5EC  54 00 7E FE */	rlwinm r0, r0, 0xf, 0x1b, 0x1f
/* 80D2D5F0  C8 3E 00 98 */	lfd f1, 0x98(r30)
/* 80D2D5F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D2D5F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2D5FC  3C 00 43 30 */	lis r0, 0x4330
/* 80D2D600  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D2D604  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D2D608  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D2D60C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D2D610  EC 23 00 32 */	fmuls f1, f3, f0
/* 80D2D614  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80D2D618  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D2D61C  D0 1F 0B 04 */	stfs f0, 0xb04(r31)
/* 80D2D620  88 1F 0B 79 */	lbz r0, 0xb79(r31)
/* 80D2D624  28 00 00 00 */	cmplwi r0, 0
/* 80D2D628  41 82 00 10 */	beq lbl_80D2D638
/* 80D2D62C  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80D2D630  D0 1F 0B 10 */	stfs f0, 0xb10(r31)
/* 80D2D634  48 00 00 0C */	b lbl_80D2D640
lbl_80D2D638:
/* 80D2D638  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80D2D63C  D0 1F 0B 10 */	stfs f0, 0xb10(r31)
lbl_80D2D640:
/* 80D2D640  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80D2D644  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D2D648  38 00 00 01 */	li r0, 1
/* 80D2D64C  98 1F 0B 44 */	stb r0, 0xb44(r31)
/* 80D2D650  98 1F 0B 46 */	stb r0, 0xb46(r31)
/* 80D2D654  98 1F 0B 78 */	stb r0, 0xb78(r31)
/* 80D2D658  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D2D65C  7C 03 07 74 */	extsb r3, r0
/* 80D2D660  4B 2F FA 0D */	bl dComIfGp_getReverb__Fi
/* 80D2D664  7C 67 1B 78 */	mr r7, r3
/* 80D2D668  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080183@ha */
/* 80D2D66C  38 03 01 83 */	addi r0, r3, 0x0183 /* 0x00080183@l */
/* 80D2D670  90 01 00 08 */	stw r0, 8(r1)
/* 80D2D674  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D2D678  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2D67C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2D680  38 81 00 08 */	addi r4, r1, 8
/* 80D2D684  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D2D688  38 C0 00 00 */	li r6, 0
/* 80D2D68C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D2D690  FC 40 08 90 */	fmr f2, f1
/* 80D2D694  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80D2D698  FC 80 18 90 */	fmr f4, f3
/* 80D2D69C  39 00 00 00 */	li r8, 0
/* 80D2D6A0  4B 57 E2 E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2D6A4  38 00 00 02 */	li r0, 2
/* 80D2D6A8  98 1F 0B 00 */	stb r0, 0xb00(r31)
/* 80D2D6AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D2D6B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D2D6B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2D6B8  7C 08 03 A6 */	mtlr r0
/* 80D2D6BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2D6C0  4E 80 00 20 */	blr 
