lbl_80D2D9A0:
/* 80D2D9A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2D9A4  7C 08 02 A6 */	mflr r0
/* 80D2D9A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2D9AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D2D9B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D2D9B4  7C 7E 1B 78 */	mr r30, r3
/* 80D2D9B8  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80D2D9BC  7C 03 07 74 */	extsb r3, r0
/* 80D2D9C0  4B 2F F6 AC */	b dComIfGp_getReverb__Fi
/* 80D2D9C4  7C 7F 1B 78 */	mr r31, r3
/* 80D2D9C8  C0 3E 0B 14 */	lfs f1, 0xb14(r30)
/* 80D2D9CC  C0 1E 0B 18 */	lfs f0, 0xb18(r30)
/* 80D2D9D0  EC 21 00 2A */	fadds f1, f1, f0
/* 80D2D9D4  4B 63 46 D8 */	b __cvt_fp2unsigned
/* 80D2D9D8  7C 66 1B 78 */	mr r6, r3
/* 80D2D9DC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080184@ha */
/* 80D2D9E0  38 03 01 84 */	addi r0, r3, 0x0184 /* 0x00080184@l */
/* 80D2D9E4  90 01 00 08 */	stw r0, 8(r1)
/* 80D2D9E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D2D9EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D2D9F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2D9F4  38 81 00 08 */	addi r4, r1, 8
/* 80D2D9F8  38 BE 0B 6C */	addi r5, r30, 0xb6c
/* 80D2D9FC  7F E7 FB 78 */	mr r7, r31
/* 80D2DA00  3D 00 80 D3 */	lis r8, lit_3645@ha
/* 80D2DA04  C0 28 E7 70 */	lfs f1, lit_3645@l(r8)
/* 80D2DA08  FC 40 08 90 */	fmr f2, f1
/* 80D2DA0C  3D 00 80 D3 */	lis r8, lit_4126@ha
/* 80D2DA10  C0 68 E8 24 */	lfs f3, lit_4126@l(r8)
/* 80D2DA14  FC 80 18 90 */	fmr f4, f3
/* 80D2DA18  39 00 00 00 */	li r8, 0
/* 80D2DA1C  4B 57 EA F0 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2DA20  A0 7E 0B 02 */	lhz r3, 0xb02(r30)
/* 80D2DA24  28 03 00 00 */	cmplwi r3, 0
/* 80D2DA28  41 82 00 10 */	beq lbl_80D2DA38
/* 80D2DA2C  38 03 FF FF */	addi r0, r3, -1
/* 80D2DA30  B0 1E 0B 02 */	sth r0, 0xb02(r30)
/* 80D2DA34  48 00 00 0C */	b lbl_80D2DA40
lbl_80D2DA38:
/* 80D2DA38  7F C3 F3 78 */	mr r3, r30
/* 80D2DA3C  48 00 00 1D */	bl actionDownInit__12daWtPillar_cFv
lbl_80D2DA40:
/* 80D2DA40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D2DA44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D2DA48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2DA4C  7C 08 03 A6 */	mtlr r0
/* 80D2DA50  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2DA54  4E 80 00 20 */	blr 
