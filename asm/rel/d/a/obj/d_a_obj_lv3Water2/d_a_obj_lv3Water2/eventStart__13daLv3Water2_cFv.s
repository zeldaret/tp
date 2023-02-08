lbl_80C5AF3C:
/* 80C5AF3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5AF40  7C 08 02 A6 */	mflr r0
/* 80C5AF44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C5AF48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C5AF4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C5AF50  7C 7E 1B 78 */	mr r30, r3
/* 80C5AF54  3C 60 80 C6 */	lis r3, l_bmdIdx@ha /* 0x80C5B364@ha */
/* 80C5AF58  3B E3 B3 64 */	addi r31, r3, l_bmdIdx@l /* 0x80C5B364@l */
/* 80C5AF5C  88 7E 05 E7 */	lbz r3, 0x5e7(r30)
/* 80C5AF60  88 1E 05 E9 */	lbz r0, 0x5e9(r30)
/* 80C5AF64  7C 03 00 40 */	cmplw r3, r0
/* 80C5AF68  41 82 00 9C */	beq lbl_80C5B004
/* 80C5AF6C  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80C5AF70  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C5AF74  54 00 E5 3E */	rlwinm r0, r0, 0x1c, 0x14, 0x1f
/* 80C5AF78  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 80C5AF7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C5AF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5AF84  3C 00 43 30 */	lis r0, 0x4330
/* 80C5AF88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C5AF8C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C5AF90  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C5AF94  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C5AF98  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80C5AF9C  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 80C5AFA0  98 1E 05 E5 */	stb r0, 0x5e5(r30)
/* 80C5AFA4  88 1E 05 E9 */	lbz r0, 0x5e9(r30)
/* 80C5AFA8  98 1E 05 E6 */	stb r0, 0x5e6(r30)
/* 80C5AFAC  88 1E 05 E9 */	lbz r0, 0x5e9(r30)
/* 80C5AFB0  98 1E 05 E7 */	stb r0, 0x5e7(r30)
/* 80C5AFB4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C5AFB8  7C 03 07 74 */	extsb r3, r0
/* 80C5AFBC  4B 3D 20 B1 */	bl dComIfGp_getReverb__Fi
/* 80C5AFC0  7C 67 1B 78 */	mr r7, r3
/* 80C5AFC4  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009003A@ha */
/* 80C5AFC8  38 03 00 3A */	addi r0, r3, 0x003A /* 0x0009003A@l */
/* 80C5AFCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C5AFD0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C5AFD4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C5AFD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C5AFDC  38 81 00 0C */	addi r4, r1, 0xc
/* 80C5AFE0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C5AFE4  38 C0 00 00 */	li r6, 0
/* 80C5AFE8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C5AFEC  FC 40 08 90 */	fmr f2, f1
/* 80C5AFF0  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80C5AFF4  FC 80 18 90 */	fmr f4, f3
/* 80C5AFF8  39 00 00 00 */	li r8, 0
/* 80C5AFFC  4B 65 09 89 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C5B000  48 00 00 9C */	b lbl_80C5B09C
lbl_80C5B004:
/* 80C5B004  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80C5B008  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C5B00C  54 00 E5 3E */	rlwinm r0, r0, 0x1c, 0x14, 0x1f
/* 80C5B010  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 80C5B014  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C5B018  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B01C  3C 00 43 30 */	lis r0, 0x4330
/* 80C5B020  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C5B024  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C5B028  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C5B02C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C5B030  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80C5B034  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 80C5B038  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C5B03C  98 1E 05 E5 */	stb r0, 0x5e5(r30)
/* 80C5B040  88 1E 05 EA */	lbz r0, 0x5ea(r30)
/* 80C5B044  98 1E 05 E6 */	stb r0, 0x5e6(r30)
/* 80C5B048  88 1E 05 EA */	lbz r0, 0x5ea(r30)
/* 80C5B04C  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80C5B050  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C5B054  7C 03 07 74 */	extsb r3, r0
/* 80C5B058  4B 3D 20 15 */	bl dComIfGp_getReverb__Fi
/* 80C5B05C  7C 67 1B 78 */	mr r7, r3
/* 80C5B060  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009003B@ha */
/* 80C5B064  38 03 00 3B */	addi r0, r3, 0x003B /* 0x0009003B@l */
/* 80C5B068  90 01 00 08 */	stw r0, 8(r1)
/* 80C5B06C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C5B070  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C5B074  80 63 00 00 */	lwz r3, 0(r3)
/* 80C5B078  38 81 00 08 */	addi r4, r1, 8
/* 80C5B07C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C5B080  38 C0 00 00 */	li r6, 0
/* 80C5B084  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C5B088  FC 40 08 90 */	fmr f2, f1
/* 80C5B08C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80C5B090  FC 80 18 90 */	fmr f4, f3
/* 80C5B094  39 00 00 00 */	li r8, 0
/* 80C5B098  4B 65 08 ED */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C5B09C:
/* 80C5B09C  7F C3 F3 78 */	mr r3, r30
/* 80C5B0A0  4B FF FC 19 */	bl mode_init_levelCtrl__13daLv3Water2_cFv
/* 80C5B0A4  38 60 00 01 */	li r3, 1
/* 80C5B0A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C5B0AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C5B0B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5B0B4  7C 08 03 A6 */	mtlr r0
/* 80C5B0B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5B0BC  4E 80 00 20 */	blr 
