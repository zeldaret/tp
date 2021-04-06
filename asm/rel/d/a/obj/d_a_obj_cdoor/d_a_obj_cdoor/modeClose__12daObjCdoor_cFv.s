lbl_80BC7900:
/* 80BC7900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC7904  7C 08 02 A6 */	mflr r0
/* 80BC7908  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC790C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BC7910  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BC7914  7C 7F 1B 78 */	mr r31, r3
/* 80BC7918  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80BC791C  7C 03 07 74 */	extsb r3, r0
/* 80BC7920  4B 46 57 4D */	bl dComIfGp_getReverb__Fi
/* 80BC7924  7C 67 1B 78 */	mr r7, r3
/* 80BC7928  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800EC@ha */
/* 80BC792C  38 03 00 EC */	addi r0, r3, 0x00EC /* 0x000800EC@l */
/* 80BC7930  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BC7934  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BC7938  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BC793C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC7940  38 81 00 0C */	addi r4, r1, 0xc
/* 80BC7944  3B DF 04 D0 */	addi r30, r31, 0x4d0
/* 80BC7948  7F C5 F3 78 */	mr r5, r30
/* 80BC794C  38 C0 00 00 */	li r6, 0
/* 80BC7950  3D 00 80 BC */	lis r8, lit_3783@ha /* 0x80BC7D30@ha */
/* 80BC7954  C0 28 7D 30 */	lfs f1, lit_3783@l(r8)  /* 0x80BC7D30@l */
/* 80BC7958  FC 40 08 90 */	fmr f2, f1
/* 80BC795C  3D 00 80 BC */	lis r8, lit_4014@ha /* 0x80BC7D40@ha */
/* 80BC7960  C0 68 7D 40 */	lfs f3, lit_4014@l(r8)  /* 0x80BC7D40@l */
/* 80BC7964  FC 80 18 90 */	fmr f4, f3
/* 80BC7968  39 00 00 00 */	li r8, 0
/* 80BC796C  4B 6E 4B A1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC7970  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80BC7974  4B 44 5A B5 */	bl play__14mDoExt_baseAnmFv
/* 80BC7978  2C 03 00 00 */	cmpwi r3, 0
/* 80BC797C  41 82 00 60 */	beq lbl_80BC79DC
/* 80BC7980  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BC7984  7C 03 07 74 */	extsb r3, r0
/* 80BC7988  4B 46 56 E5 */	bl dComIfGp_getReverb__Fi
/* 80BC798C  7C 67 1B 78 */	mr r7, r3
/* 80BC7990  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008009A@ha */
/* 80BC7994  38 03 00 9A */	addi r0, r3, 0x009A /* 0x0008009A@l */
/* 80BC7998  90 01 00 08 */	stw r0, 8(r1)
/* 80BC799C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BC79A0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BC79A4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC79A8  38 81 00 08 */	addi r4, r1, 8
/* 80BC79AC  7F C5 F3 78 */	mr r5, r30
/* 80BC79B0  38 C0 00 00 */	li r6, 0
/* 80BC79B4  3D 00 80 BC */	lis r8, lit_3783@ha /* 0x80BC7D30@ha */
/* 80BC79B8  C0 28 7D 30 */	lfs f1, lit_3783@l(r8)  /* 0x80BC7D30@l */
/* 80BC79BC  FC 40 08 90 */	fmr f2, f1
/* 80BC79C0  3D 00 80 BC */	lis r8, lit_4014@ha /* 0x80BC7D40@ha */
/* 80BC79C4  C0 68 7D 40 */	lfs f3, lit_4014@l(r8)  /* 0x80BC7D40@l */
/* 80BC79C8  FC 80 18 90 */	fmr f4, f3
/* 80BC79CC  39 00 00 00 */	li r8, 0
/* 80BC79D0  4B 6E 3F B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC79D4  7F E3 FB 78 */	mr r3, r31
/* 80BC79D8  4B FF FD 85 */	bl init_modeWait__12daObjCdoor_cFv
lbl_80BC79DC:
/* 80BC79DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BC79E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BC79E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC79E8  7C 08 03 A6 */	mtlr r0
/* 80BC79EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC79F0  4E 80 00 20 */	blr 
