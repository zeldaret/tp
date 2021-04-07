lbl_80BB922C:
/* 80BB922C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB9230  7C 08 02 A6 */	mflr r0
/* 80BB9234  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB9238  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BB923C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BB9240  7C 7E 1B 78 */	mr r30, r3
/* 80BB9244  3C 60 80 BC */	lis r3, lit_3653@ha /* 0x80BB973C@ha */
/* 80BB9248  3B E3 97 3C */	addi r31, r3, lit_3653@l /* 0x80BB973C@l */
/* 80BB924C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BB9250  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BB9254  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BB9258  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BB925C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80BB9260  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BB9264  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80BB9268  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BB926C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BB9270  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BB9274  7C 03 07 74 */	extsb r3, r0
/* 80BB9278  4B 47 3D F5 */	bl dComIfGp_getReverb__Fi
/* 80BB927C  7C 67 1B 78 */	mr r7, r3
/* 80BB9280  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080173@ha */
/* 80BB9284  38 03 01 73 */	addi r0, r3, 0x0173 /* 0x00080173@l */
/* 80BB9288  90 01 00 08 */	stw r0, 8(r1)
/* 80BB928C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB9290  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB9294  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB9298  38 81 00 08 */	addi r4, r1, 8
/* 80BB929C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80BB92A0  38 C0 00 00 */	li r6, 0
/* 80BB92A4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80BB92A8  FC 40 08 90 */	fmr f2, f1
/* 80BB92AC  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80BB92B0  FC 80 18 90 */	fmr f4, f3
/* 80BB92B4  39 00 00 00 */	li r8, 0
/* 80BB92B8  4B 6F 26 CD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB92BC  7F C3 F3 78 */	mr r3, r30
/* 80BB92C0  38 80 00 01 */	li r4, 1
/* 80BB92C4  48 00 00 61 */	bl setBreakEffect__12daBmWindow_cFi
/* 80BB92C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB92CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB92D0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BB92D4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BB92D8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BB92DC  7C 05 07 74 */	extsb r5, r0
/* 80BB92E0  4B 47 BF 21 */	bl onSwitch__10dSv_info_cFii
/* 80BB92E4  38 00 00 02 */	li r0, 2
/* 80BB92E8  98 1E 05 AC */	stb r0, 0x5ac(r30)
/* 80BB92EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BB92F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BB92F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB92F8  7C 08 03 A6 */	mtlr r0
/* 80BB92FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB9300  4E 80 00 20 */	blr 
