lbl_80C74DBC:
/* 80C74DBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C74DC0  7C 08 02 A6 */	mflr r0
/* 80C74DC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C74DC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C74DCC  7C 7F 1B 78 */	mr r31, r3
/* 80C74DD0  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C74DD4  7C 03 07 74 */	extsb r3, r0
/* 80C74DD8  4B 3B 82 94 */	b dComIfGp_getReverb__Fi
/* 80C74DDC  7C 67 1B 78 */	mr r7, r3
/* 80C74DE0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021F@ha */
/* 80C74DE4  38 03 02 1F */	addi r0, r3, 0x021F /* 0x0008021F@l */
/* 80C74DE8  90 01 00 08 */	stw r0, 8(r1)
/* 80C74DEC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C74DF0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C74DF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C74DF8  38 81 00 08 */	addi r4, r1, 8
/* 80C74DFC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C74E00  38 C0 00 00 */	li r6, 0
/* 80C74E04  3D 00 80 C7 */	lis r8, lit_3994@ha
/* 80C74E08  C0 28 55 84 */	lfs f1, lit_3994@l(r8)
/* 80C74E0C  FC 40 08 90 */	fmr f2, f1
/* 80C74E10  3D 00 80 C7 */	lis r8, lit_3995@ha
/* 80C74E14  C0 68 55 88 */	lfs f3, lit_3995@l(r8)
/* 80C74E18  FC 80 18 90 */	fmr f4, f3
/* 80C74E1C  39 00 00 00 */	li r8, 0
/* 80C74E20  4B 63 6B 64 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C74E24  38 00 00 03 */	li r0, 3
/* 80C74E28  98 1F 14 BC */	stb r0, 0x14bc(r31)
/* 80C74E2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C74E30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C74E34  7C 08 03 A6 */	mtlr r0
/* 80C74E38  38 21 00 20 */	addi r1, r1, 0x20
/* 80C74E3C  4E 80 00 20 */	blr 
