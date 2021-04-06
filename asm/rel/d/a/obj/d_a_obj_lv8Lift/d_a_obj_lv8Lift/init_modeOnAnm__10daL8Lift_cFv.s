lbl_80C89770:
/* 80C89770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C89774  7C 08 02 A6 */	mflr r0
/* 80C89778  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8977C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C89780  7C 7F 1B 78 */	mr r31, r3
/* 80C89784  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80C89788  28 04 00 00 */	cmplwi r4, 0
/* 80C8978C  41 82 00 18 */	beq lbl_80C897A4
/* 80C89790  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C89794  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C89798  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C8979C  7F E5 FB 78 */	mr r5, r31
/* 80C897A0  4B 3E B2 69 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80C897A4:
/* 80C897A4  3C 60 80 C9 */	lis r3, lit_3661@ha /* 0x80C89FA4@ha */
/* 80C897A8  C0 03 9F A4 */	lfs f0, lit_3661@l(r3)  /* 0x80C89FA4@l */
/* 80C897AC  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80C897B0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C897B4  7C 03 07 74 */	extsb r3, r0
/* 80C897B8  4B 3A 38 B5 */	bl dComIfGp_getReverb__Fi
/* 80C897BC  7C 67 1B 78 */	mr r7, r3
/* 80C897C0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080213@ha */
/* 80C897C4  38 03 02 13 */	addi r0, r3, 0x0213 /* 0x00080213@l */
/* 80C897C8  90 01 00 08 */	stw r0, 8(r1)
/* 80C897CC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C897D0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C897D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C897D8  38 81 00 08 */	addi r4, r1, 8
/* 80C897DC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C897E0  38 C0 00 00 */	li r6, 0
/* 80C897E4  3D 00 80 C9 */	lis r8, lit_3661@ha /* 0x80C89FA4@ha */
/* 80C897E8  C0 28 9F A4 */	lfs f1, lit_3661@l(r8)  /* 0x80C89FA4@l */
/* 80C897EC  FC 40 08 90 */	fmr f2, f1
/* 80C897F0  3D 00 80 C9 */	lis r8, lit_3896@ha /* 0x80C89FC8@ha */
/* 80C897F4  C0 68 9F C8 */	lfs f3, lit_3896@l(r8)  /* 0x80C89FC8@l */
/* 80C897F8  FC 80 18 90 */	fmr f4, f3
/* 80C897FC  39 00 00 00 */	li r8, 0
/* 80C89800  4B 62 21 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C89804  38 00 00 05 */	li r0, 5
/* 80C89808  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80C8980C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C89810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C89814  7C 08 03 A6 */	mtlr r0
/* 80C89818  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8981C  4E 80 00 20 */	blr 
