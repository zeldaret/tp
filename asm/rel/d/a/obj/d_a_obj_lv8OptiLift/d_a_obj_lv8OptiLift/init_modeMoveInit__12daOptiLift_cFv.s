lbl_80C8B100:
/* 80C8B100  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8B104  7C 08 02 A6 */	mflr r0
/* 80C8B108  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8B10C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C8B110  7C 7F 1B 78 */	mr r31, r3
/* 80C8B114  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80C8B118  28 04 00 00 */	cmplwi r4, 0
/* 80C8B11C  41 82 00 18 */	beq lbl_80C8B134
/* 80C8B120  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8B124  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8B128  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C8B12C  7F E5 FB 78 */	mr r5, r31
/* 80C8B130  4B 3E 98 D9 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80C8B134:
/* 80C8B134  3C 60 80 C9 */	lis r3, lit_3695@ha /* 0x80C8B9F0@ha */
/* 80C8B138  C0 03 B9 F0 */	lfs f0, lit_3695@l(r3)  /* 0x80C8B9F0@l */
/* 80C8B13C  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80C8B140  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C8B144  7C 03 07 74 */	extsb r3, r0
/* 80C8B148  4B 3A 1F 25 */	bl dComIfGp_getReverb__Fi
/* 80C8B14C  7C 67 1B 78 */	mr r7, r3
/* 80C8B150  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080213@ha */
/* 80C8B154  38 03 02 13 */	addi r0, r3, 0x0213 /* 0x00080213@l */
/* 80C8B158  90 01 00 08 */	stw r0, 8(r1)
/* 80C8B15C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C8B160  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C8B164  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8B168  38 81 00 08 */	addi r4, r1, 8
/* 80C8B16C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C8B170  38 C0 00 00 */	li r6, 0
/* 80C8B174  3D 00 80 C9 */	lis r8, lit_3695@ha /* 0x80C8B9F0@ha */
/* 80C8B178  C0 28 B9 F0 */	lfs f1, lit_3695@l(r8)  /* 0x80C8B9F0@l */
/* 80C8B17C  FC 40 08 90 */	fmr f2, f1
/* 80C8B180  3D 00 80 C9 */	lis r8, lit_3902@ha /* 0x80C8BA00@ha */
/* 80C8B184  C0 68 BA 00 */	lfs f3, lit_3902@l(r8)  /* 0x80C8BA00@l */
/* 80C8B188  FC 80 18 90 */	fmr f4, f3
/* 80C8B18C  39 00 00 00 */	li r8, 0
/* 80C8B190  4B 62 07 F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8B194  38 00 00 04 */	li r0, 4
/* 80C8B198  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80C8B19C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C8B1A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8B1A4  7C 08 03 A6 */	mtlr r0
/* 80C8B1A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8B1AC  4E 80 00 20 */	blr 
