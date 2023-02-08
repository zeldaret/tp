lbl_80C283AC:
/* 80C283AC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C283B0  7C 08 02 A6 */	mflr r0
/* 80C283B4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C283B8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80C283BC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80C283C0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C283C4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C283C8  7C 7E 1B 78 */	mr r30, r3
/* 80C283CC  3C 60 80 C3 */	lis r3, lit_3649@ha /* 0x80C29238@ha */
/* 80C283D0  3B E3 92 38 */	addi r31, r3, lit_3649@l /* 0x80C29238@l */
/* 80C283D4  3C 60 80 C3 */	lis r3, data_80C293F8@ha /* 0x80C293F8@ha */
/* 80C283D8  38 63 93 F8 */	addi r3, r3, data_80C293F8@l /* 0x80C293F8@l */
/* 80C283DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C283E0  C0 23 00 08 */	lfs f1, 8(r3)
/* 80C283E4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C283E8  EC 61 00 28 */	fsubs f3, f1, f0
/* 80C283EC  C0 23 00 04 */	lfs f1, 4(r3)
/* 80C283F0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C283F4  EC 41 00 28 */	fsubs f2, f1, f0
/* 80C283F8  C0 23 00 00 */	lfs f1, 0(r3)
/* 80C283FC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C28400  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C28404  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C28408  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80C2840C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80C28410  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C28414  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C28418  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80C2841C  7C 00 00 D0 */	neg r0, r0
/* 80C28420  7C 04 07 34 */	extsh r4, r0
/* 80C28424  4B 3E 3F B9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C28428  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2842C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C28430  38 81 00 24 */	addi r4, r1, 0x24
/* 80C28434  7C 85 23 78 */	mr r5, r4
/* 80C28438  4B 71 E9 35 */	bl PSMTXMultVec
/* 80C2843C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80C28440  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C28444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C28448  40 80 01 E4 */	bge lbl_80C2862C
/* 80C2844C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C28450  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C28454  40 81 01 D8 */	ble lbl_80C2862C
/* 80C28458  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C2845C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C28460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C28464  40 80 01 C8 */	bge lbl_80C2862C
/* 80C28468  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C2846C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C28470  40 81 01 BC */	ble lbl_80C2862C
/* 80C28474  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80C28478  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C2847C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C28480  40 80 01 AC */	bge lbl_80C2862C
/* 80C28484  3C 60 80 C3 */	lis r3, data_80C293F4@ha /* 0x80C293F4@ha */
/* 80C28488  38 83 93 F4 */	addi r4, r3, data_80C293F4@l /* 0x80C293F4@l */
/* 80C2848C  80 64 00 00 */	lwz r3, 0(r4)
/* 80C28490  C3 E3 05 2C */	lfs f31, 0x52c(r3)
/* 80C28494  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C28498  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C2849C  40 81 01 B8 */	ble lbl_80C28654
/* 80C284A0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80C284A4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80C284A8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80C284AC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C284B0  FC 00 00 1E */	fctiwz f0, f0
/* 80C284B4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C284B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C284BC  B0 1E 05 B0 */	sth r0, 0x5b0(r30)
/* 80C284C0  80 64 00 00 */	lwz r3, 0(r4)
/* 80C284C4  4B BE EE 35 */	bl setHitBoardSe__9daE_YMB_cFv
/* 80C284C8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80C284CC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80C284D0  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 80C284D4  88 1E 05 E5 */	lbz r0, 0x5e5(r30)
/* 80C284D8  28 00 00 00 */	cmplwi r0, 0
/* 80C284DC  40 82 01 34 */	bne lbl_80C28610
/* 80C284E0  88 1E 06 C0 */	lbz r0, 0x6c0(r30)
/* 80C284E4  28 00 00 01 */	cmplwi r0, 1
/* 80C284E8  40 82 01 28 */	bne lbl_80C28610
/* 80C284EC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C284F0  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 80C284F4  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80C284F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C284FC  A0 1F 00 24 */	lhz r0, 0x24(r31)
/* 80C28500  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80C28504  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C28508  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C2850C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C28510  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C28514  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C28518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2851C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C28520  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C28524  38 81 00 10 */	addi r4, r1, 0x10
/* 80C28528  38 A0 00 01 */	li r5, 1
/* 80C2852C  38 C0 00 01 */	li r6, 1
/* 80C28530  38 E1 00 18 */	addi r7, r1, 0x18
/* 80C28534  4B 44 76 D9 */	bl StartQuake__12dVibration_cFPCUcii4cXyz
/* 80C28538  38 00 00 01 */	li r0, 1
/* 80C2853C  98 1E 05 E5 */	stb r0, 0x5e5(r30)
/* 80C28540  38 00 00 5A */	li r0, 0x5a
/* 80C28544  B0 1E 05 E6 */	sth r0, 0x5e6(r30)
/* 80C28548  C0 3E 05 A0 */	lfs f1, 0x5a0(r30)
/* 80C2854C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C28550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C28554  40 81 00 60 */	ble lbl_80C285B4
/* 80C28558  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2855C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C28560  40 80 00 54 */	bge lbl_80C285B4
/* 80C28564  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C28568  7C 03 07 74 */	extsb r3, r0
/* 80C2856C  4B 40 4B 01 */	bl dComIfGp_getReverb__Fi
/* 80C28570  7C 67 1B 78 */	mr r7, r3
/* 80C28574  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008016C@ha */
/* 80C28578  38 03 01 6C */	addi r0, r3, 0x016C /* 0x0008016C@l */
/* 80C2857C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C28580  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C28584  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C28588  80 63 00 00 */	lwz r3, 0(r3)
/* 80C2858C  38 81 00 0C */	addi r4, r1, 0xc
/* 80C28590  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C28594  38 C0 00 00 */	li r6, 0
/* 80C28598  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C2859C  FC 40 08 90 */	fmr f2, f1
/* 80C285A0  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C285A4  FC 80 18 90 */	fmr f4, f3
/* 80C285A8  39 00 00 00 */	li r8, 0
/* 80C285AC  4B 68 33 D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C285B0  48 00 00 60 */	b lbl_80C28610
lbl_80C285B4:
/* 80C285B4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C285B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C285BC  4C 41 13 82 */	cror 2, 1, 2
/* 80C285C0  40 82 00 50 */	bne lbl_80C28610
/* 80C285C4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C285C8  7C 03 07 74 */	extsb r3, r0
/* 80C285CC  4B 40 4A A1 */	bl dComIfGp_getReverb__Fi
/* 80C285D0  7C 67 1B 78 */	mr r7, r3
/* 80C285D4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008016D@ha */
/* 80C285D8  38 03 01 6D */	addi r0, r3, 0x016D /* 0x0008016D@l */
/* 80C285DC  90 01 00 08 */	stw r0, 8(r1)
/* 80C285E0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C285E4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C285E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C285EC  38 81 00 08 */	addi r4, r1, 8
/* 80C285F0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C285F4  38 C0 00 00 */	li r6, 0
/* 80C285F8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C285FC  FC 40 08 90 */	fmr f2, f1
/* 80C28600  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C28604  FC 80 18 90 */	fmr f4, f3
/* 80C28608  39 00 00 00 */	li r8, 0
/* 80C2860C  4B 68 33 79 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C28610:
/* 80C28610  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 80C28614  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C28618  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80C2861C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80C28620  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 80C28624  4B 64 73 59 */	bl cLib_addCalc__FPfffff
/* 80C28628  48 00 00 2C */	b lbl_80C28654
lbl_80C2862C:
/* 80C2862C  A8 1E 05 E6 */	lha r0, 0x5e6(r30)
/* 80C28630  2C 00 00 01 */	cmpwi r0, 1
/* 80C28634  40 82 00 20 */	bne lbl_80C28654
/* 80C28638  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2863C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C28640  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C28644  38 80 00 1F */	li r4, 0x1f
/* 80C28648  4B 44 77 4D */	bl StopQuake__12dVibration_cFi
/* 80C2864C  38 00 00 00 */	li r0, 0
/* 80C28650  98 1E 05 E5 */	stb r0, 0x5e5(r30)
lbl_80C28654:
/* 80C28654  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80C28658  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80C2865C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C28660  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C28664  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C28668  7C 08 03 A6 */	mtlr r0
/* 80C2866C  38 21 00 50 */	addi r1, r1, 0x50
/* 80C28670  4E 80 00 20 */	blr 
