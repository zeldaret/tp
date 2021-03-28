lbl_80BA1DCC:
/* 80BA1DCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA1DD0  7C 08 02 A6 */	mflr r0
/* 80BA1DD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA1DD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BA1DDC  7C 7F 1B 78 */	mr r31, r3
/* 80BA1DE0  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80BA1DE4  7C 03 07 74 */	extsb r3, r0
/* 80BA1DE8  4B 48 B2 84 */	b dComIfGp_getReverb__Fi
/* 80BA1DEC  7C 67 1B 78 */	mr r7, r3
/* 80BA1DF0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008018F@ha */
/* 80BA1DF4  38 03 01 8F */	addi r0, r3, 0x018F /* 0x0008018F@l */
/* 80BA1DF8  90 01 00 08 */	stw r0, 8(r1)
/* 80BA1DFC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BA1E00  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BA1E04  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA1E08  38 81 00 08 */	addi r4, r1, 8
/* 80BA1E0C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BA1E10  38 C0 00 00 */	li r6, 0
/* 80BA1E14  3D 00 80 BA */	lis r8, lit_3890@ha
/* 80BA1E18  C0 28 23 C4 */	lfs f1, lit_3890@l(r8)
/* 80BA1E1C  FC 40 08 90 */	fmr f2, f1
/* 80BA1E20  3D 00 80 BA */	lis r8, lit_3891@ha
/* 80BA1E24  C0 68 23 C8 */	lfs f3, lit_3891@l(r8)
/* 80BA1E28  FC 80 18 90 */	fmr f4, f3
/* 80BA1E2C  39 00 00 00 */	li r8, 0
/* 80BA1E30  4B 70 9B 54 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BA1E34  3C 60 80 BA */	lis r3, l_HIO@ha
/* 80BA1E38  38 63 25 6C */	addi r3, r3, l_HIO@l
/* 80BA1E3C  88 03 00 10 */	lbz r0, 0x10(r3)
/* 80BA1E40  98 1F 05 D8 */	stb r0, 0x5d8(r31)
/* 80BA1E44  38 00 00 03 */	li r0, 3
/* 80BA1E48  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80BA1E4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BA1E50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA1E54  7C 08 03 A6 */	mtlr r0
/* 80BA1E58  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA1E5C  4E 80 00 20 */	blr 
