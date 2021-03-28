lbl_80C1D2D8:
/* 80C1D2D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C1D2DC  7C 08 02 A6 */	mflr r0
/* 80C1D2E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C1D2E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C1D2E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C1D2EC  7C 7F 1B 78 */	mr r31, r3
/* 80C1D2F0  3C 60 80 C2 */	lis r3, lit_3647@ha
/* 80C1D2F4  3B C3 DA 94 */	addi r30, r3, lit_3647@l
/* 80C1D2F8  88 7F 05 C4 */	lbz r3, 0x5c4(r31)
/* 80C1D2FC  28 03 00 00 */	cmplwi r3, 0
/* 80C1D300  41 82 00 2C */	beq lbl_80C1D32C
/* 80C1D304  38 03 FF FF */	addi r0, r3, -1
/* 80C1D308  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80C1D30C  88 1F 05 C4 */	lbz r0, 0x5c4(r31)
/* 80C1D310  28 00 00 00 */	cmplwi r0, 0
/* 80C1D314  40 82 00 DC */	bne lbl_80C1D3F0
/* 80C1D318  3C 60 80 C2 */	lis r3, l_HIO@ha
/* 80C1D31C  38 63 DC 54 */	addi r3, r3, l_HIO@l
/* 80C1D320  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C1D324  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 80C1D328  48 00 00 C8 */	b lbl_80C1D3F0
lbl_80C1D32C:
/* 80C1D32C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C1D330  7C 03 07 74 */	extsb r3, r0
/* 80C1D334  4B 40 FD 38 */	b dComIfGp_getReverb__Fi
/* 80C1D338  7C 67 1B 78 */	mr r7, r3
/* 80C1D33C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080127@ha */
/* 80C1D340  38 03 01 27 */	addi r0, r3, 0x0127 /* 0x00080127@l */
/* 80C1D344  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C1D348  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C1D34C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C1D350  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1D354  38 81 00 0C */	addi r4, r1, 0xc
/* 80C1D358  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C1D35C  38 C0 00 00 */	li r6, 0
/* 80C1D360  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80C1D364  FC 40 08 90 */	fmr f2, f1
/* 80C1D368  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 80C1D36C  FC 80 18 90 */	fmr f4, f3
/* 80C1D370  39 00 00 00 */	li r8, 0
/* 80C1D374  4B 68 F1 98 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C1D378  C0 3F 05 D4 */	lfs f1, 0x5d4(r31)
/* 80C1D37C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80C1D380  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80C1D384  EC 41 00 24 */	fdivs f2, f1, f0
/* 80C1D388  4B 65 33 B8 */	b cLib_chaseF__FPfff
/* 80C1D38C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80C1D390  3C 80 80 C2 */	lis r4, l_HIO@ha
/* 80C1D394  38 84 DC 54 */	addi r4, r4, l_HIO@l
/* 80C1D398  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80C1D39C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80C1D3A0  C0 7F 05 2C */	lfs f3, 0x52c(r31)
/* 80C1D3A4  C0 9E 00 3C */	lfs f4, 0x3c(r30)
/* 80C1D3A8  4B 65 25 D4 */	b cLib_addCalc__FPfffff
/* 80C1D3AC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80C1D3B0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C1D3B4  40 82 00 28 */	bne lbl_80C1D3DC
/* 80C1D3B8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080127@ha */
/* 80C1D3BC  38 03 01 27 */	addi r0, r3, 0x0127 /* 0x00080127@l */
/* 80C1D3C0  90 01 00 08 */	stw r0, 8(r1)
/* 80C1D3C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C1D3C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C1D3CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1D3D0  38 81 00 08 */	addi r4, r1, 8
/* 80C1D3D4  38 A0 00 00 */	li r5, 0
/* 80C1D3D8  4B 69 04 D8 */	b seStop__7Z2SeMgrF10JAISoundIDUl
lbl_80C1D3DC:
/* 80C1D3DC  80 1F 05 DC */	lwz r0, 0x5dc(r31)
/* 80C1D3E0  28 00 00 00 */	cmplwi r0, 0
/* 80C1D3E4  41 82 00 0C */	beq lbl_80C1D3F0
/* 80C1D3E8  7F E3 FB 78 */	mr r3, r31
/* 80C1D3EC  48 00 00 1D */	bl init_modeMoveInit__11daHeavySw_cFv
lbl_80C1D3F0:
/* 80C1D3F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C1D3F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C1D3F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C1D3FC  7C 08 03 A6 */	mtlr r0
/* 80C1D400  38 21 00 20 */	addi r1, r1, 0x20
/* 80C1D404  4E 80 00 20 */	blr 
