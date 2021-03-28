lbl_80D24D80:
/* 80D24D80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D24D84  7C 08 02 A6 */	mflr r0
/* 80D24D88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D24D8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D24D90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D24D94  7C 7E 1B 78 */	mr r30, r3
/* 80D24D98  3C 60 80 D2 */	lis r3, l_midna_offset@ha
/* 80D24D9C  3B E3 6B 5C */	addi r31, r3, l_midna_offset@l
/* 80D24DA0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D24DA4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80D24DA8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D24DAC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80D24DB0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D24DB4  38 00 00 01 */	li r0, 1
/* 80D24DB8  98 1E 09 5E */	stb r0, 0x95e(r30)
/* 80D24DBC  38 00 00 00 */	li r0, 0
/* 80D24DC0  98 1E 09 60 */	stb r0, 0x960(r30)
/* 80D24DC4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80D24DC8  D0 1E 09 78 */	stfs f0, 0x978(r30)
/* 80D24DCC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D24DD0  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80D24DD4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D24DD8  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80D24DDC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D24DE0  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80D24DE4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D24DE8  7C 03 07 74 */	extsb r3, r0
/* 80D24DEC  4B 30 82 80 */	b dComIfGp_getReverb__Fi
/* 80D24DF0  7C 67 1B 78 */	mr r7, r3
/* 80D24DF4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008024B@ha */
/* 80D24DF8  38 03 02 4B */	addi r0, r3, 0x024B /* 0x0008024B@l */
/* 80D24DFC  90 01 00 08 */	stw r0, 8(r1)
/* 80D24E00  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D24E04  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D24E08  80 63 00 00 */	lwz r3, 0(r3)
/* 80D24E0C  38 81 00 08 */	addi r4, r1, 8
/* 80D24E10  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D24E14  38 C0 00 00 */	li r6, 0
/* 80D24E18  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80D24E1C  FC 40 08 90 */	fmr f2, f1
/* 80D24E20  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80D24E24  FC 80 18 90 */	fmr f4, f3
/* 80D24E28  39 00 00 00 */	li r8, 0
/* 80D24E2C  4B 58 6B 58 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D24E30  38 00 00 01 */	li r0, 1
/* 80D24E34  98 1E 09 61 */	stb r0, 0x961(r30)
/* 80D24E38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D24E3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D24E40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D24E44  7C 08 03 A6 */	mtlr r0
/* 80D24E48  38 21 00 20 */	addi r1, r1, 0x20
/* 80D24E4C  4E 80 00 20 */	blr 
