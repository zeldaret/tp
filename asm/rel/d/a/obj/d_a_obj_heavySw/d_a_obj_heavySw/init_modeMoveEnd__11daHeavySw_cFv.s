lbl_80C1D688:
/* 80C1D688  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C1D68C  7C 08 02 A6 */	mflr r0
/* 80C1D690  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C1D694  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C1D698  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C1D69C  7C 7F 1B 78 */	mr r31, r3
/* 80C1D6A0  3C 60 80 C2 */	lis r3, lit_3647@ha
/* 80C1D6A4  3B C3 DA 94 */	addi r30, r3, lit_3647@l
/* 80C1D6A8  38 00 00 01 */	li r0, 1
/* 80C1D6AC  98 1F 05 C5 */	stb r0, 0x5c5(r31)
/* 80C1D6B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1D6B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C1D6B8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C1D6BC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C1D6C0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C1D6C4  7C 05 07 74 */	extsb r5, r0
/* 80C1D6C8  4B 41 7C 98 */	b isSwitch__10dSv_info_cCFii
/* 80C1D6CC  2C 03 00 00 */	cmpwi r3, 0
/* 80C1D6D0  40 82 00 88 */	bne lbl_80C1D758
/* 80C1D6D4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C1D6D8  7C 03 07 74 */	extsb r3, r0
/* 80C1D6DC  4B 40 F9 90 */	b dComIfGp_getReverb__Fi
/* 80C1D6E0  7C 67 1B 78 */	mr r7, r3
/* 80C1D6E4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008012A@ha */
/* 80C1D6E8  38 03 01 2A */	addi r0, r3, 0x012A /* 0x0008012A@l */
/* 80C1D6EC  90 01 00 08 */	stw r0, 8(r1)
/* 80C1D6F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C1D6F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C1D6F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1D6FC  38 81 00 08 */	addi r4, r1, 8
/* 80C1D700  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C1D704  38 C0 00 00 */	li r6, 0
/* 80C1D708  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80C1D70C  FC 40 08 90 */	fmr f2, f1
/* 80C1D710  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 80C1D714  FC 80 18 90 */	fmr f4, f3
/* 80C1D718  39 00 00 00 */	li r8, 0
/* 80C1D71C  4B 68 E2 68 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C1D720  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80C1D724  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C1D728  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80C1D72C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C1D730  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C1D734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1D738  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C1D73C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C1D740  3C 80 80 C2 */	lis r4, l_HIO@ha
/* 80C1D744  38 84 DC 54 */	addi r4, r4, l_HIO@l
/* 80C1D748  88 84 00 34 */	lbz r4, 0x34(r4)
/* 80C1D74C  38 A0 00 0F */	li r5, 0xf
/* 80C1D750  38 C1 00 0C */	addi r6, r1, 0xc
/* 80C1D754  4B 45 22 D0 */	b StartShock__12dVibration_cFii4cXyz
lbl_80C1D758:
/* 80C1D758  3C 60 80 C2 */	lis r3, l_HIO@ha
/* 80C1D75C  38 63 DC 54 */	addi r3, r3, l_HIO@l
/* 80C1D760  88 03 00 32 */	lbz r0, 0x32(r3)
/* 80C1D764  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80C1D768  38 00 00 04 */	li r0, 4
/* 80C1D76C  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80C1D770  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C1D774  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C1D778  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C1D77C  7C 08 03 A6 */	mtlr r0
/* 80C1D780  38 21 00 20 */	addi r1, r1, 0x20
/* 80C1D784  4E 80 00 20 */	blr 
