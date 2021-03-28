lbl_80BF7288:
/* 80BF7288  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BF728C  7C 08 02 A6 */	mflr r0
/* 80BF7290  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BF7294  39 61 00 40 */	addi r11, r1, 0x40
/* 80BF7298  4B 76 AF 44 */	b _savegpr_29
/* 80BF729C  7C 7E 1B 78 */	mr r30, r3
/* 80BF72A0  7C 9F 23 78 */	mr r31, r4
/* 80BF72A4  3C 80 80 C0 */	lis r4, l_dzb@ha
/* 80BF72A8  3B A4 8F E8 */	addi r29, r4, l_dzb@l
/* 80BF72AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BF72B0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BF72B4  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80BF72B8  28 00 00 00 */	cmplwi r0, 0
/* 80BF72BC  40 82 00 50 */	bne lbl_80BF730C
/* 80BF72C0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80BF72C4  4B 42 35 1C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BF72C8  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80BF72CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF72D0  40 81 00 3C */	ble lbl_80BF730C
/* 80BF72D4  7F C3 F3 78 */	mr r3, r30
/* 80BF72D8  48 00 17 7D */	bl stopEmitterPre00__13daObjGeyser_cFv
/* 80BF72DC  7F C3 F3 78 */	mr r3, r30
/* 80BF72E0  48 00 17 A1 */	bl stopEmitterSrc00Sand__13daObjGeyser_cFv
/* 80BF72E4  7F C3 F3 78 */	mr r3, r30
/* 80BF72E8  48 00 17 C5 */	bl stopEmitterSrc01Smk__13daObjGeyser_cFv
/* 80BF72EC  7F C3 F3 78 */	mr r3, r30
/* 80BF72F0  48 00 19 B1 */	bl stopEmitterClm00__13daObjGeyser_cFv
/* 80BF72F4  7F C3 F3 78 */	mr r3, r30
/* 80BF72F8  48 00 19 D5 */	bl stopEmitterSmk01__13daObjGeyser_cFv
/* 80BF72FC  7F C3 F3 78 */	mr r3, r30
/* 80BF7300  48 00 19 F9 */	bl stopEmitterSmk02__13daObjGeyser_cFv
/* 80BF7304  38 60 00 01 */	li r3, 1
/* 80BF7308  48 00 01 2C */	b lbl_80BF7434
lbl_80BF730C:
/* 80BF730C  7F C3 F3 78 */	mr r3, r30
/* 80BF7310  48 00 01 3D */	bl action__13daObjGeyser_cFv
/* 80BF7314  88 1E 07 62 */	lbz r0, 0x762(r30)
/* 80BF7318  28 00 00 02 */	cmplwi r0, 2
/* 80BF731C  41 82 00 08 */	beq lbl_80BF7324
/* 80BF7320  40 82 01 08 */	bne lbl_80BF7428
lbl_80BF7324:
/* 80BF7324  A0 1E 07 66 */	lhz r0, 0x766(r30)
/* 80BF7328  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80BF732C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BF7330  38 7D 00 08 */	addi r3, r29, 8
/* 80BF7334  7C 63 02 14 */	add r3, r3, r0
/* 80BF7338  C0 03 00 00 */	lfs f0, 0(r3)
/* 80BF733C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BF7340  C0 63 00 04 */	lfs f3, 4(r3)
/* 80BF7344  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80BF7348  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BF734C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BF7350  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 80BF7354  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BF7358  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80BF735C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BF7360  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BF7364  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 80BF7368  C0 1E 07 30 */	lfs f0, 0x730(r30)
/* 80BF736C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80BF7370  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF7374  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BF7378  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BF737C  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80BF7380  4B 41 5B 8C */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80BF7384  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF7388  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF738C  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF7390  7C 85 23 78 */	mr r5, r4
/* 80BF7394  4B 74 F9 D8 */	b PSMTXMultVec
/* 80BF7398  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BF739C  D0 1E 07 44 */	stfs f0, 0x744(r30)
/* 80BF73A0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BF73A4  D0 1E 07 48 */	stfs f0, 0x748(r30)
/* 80BF73A8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BF73AC  D0 1E 07 4C */	stfs f0, 0x74c(r30)
/* 80BF73B0  38 61 00 08 */	addi r3, r1, 8
/* 80BF73B4  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF73B8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BF73BC  4B 66 F7 28 */	b __pl__4cXyzCFRC3Vec
/* 80BF73C0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BF73C4  D0 1E 07 50 */	stfs f0, 0x750(r30)
/* 80BF73C8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BF73CC  D0 1E 07 54 */	stfs f0, 0x754(r30)
/* 80BF73D0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BF73D4  D0 1E 07 58 */	stfs f0, 0x758(r30)
/* 80BF73D8  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80BF73DC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BF73E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF73E4  D0 1E 07 5C */	stfs f0, 0x75c(r30)
/* 80BF73E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF73EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF73F0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BF73F4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80BF73F8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80BF73FC  40 82 00 24 */	bne lbl_80BF7420
/* 80BF7400  38 7E 07 0C */	addi r3, r30, 0x70c
/* 80BF7404  38 9E 07 44 */	addi r4, r30, 0x744
/* 80BF7408  4B 67 7C 34 */	b Set__8cM3dGCpsFRC9cM3dGCpsS
/* 80BF740C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF7410  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF7414  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BF7418  38 9E 05 E8 */	addi r4, r30, 0x5e8
/* 80BF741C  4B 66 D7 8C */	b Set__4cCcSFP8cCcD_Obj
lbl_80BF7420:
/* 80BF7420  7F C3 F3 78 */	mr r3, r30
/* 80BF7424  48 00 12 3D */	bl movePntWind__13daObjGeyser_cFv
lbl_80BF7428:
/* 80BF7428  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80BF742C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF7430  38 60 00 01 */	li r3, 1
lbl_80BF7434:
/* 80BF7434  39 61 00 40 */	addi r11, r1, 0x40
/* 80BF7438  4B 76 AD F0 */	b _restgpr_29
/* 80BF743C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BF7440  7C 08 03 A6 */	mtlr r0
/* 80BF7444  38 21 00 40 */	addi r1, r1, 0x40
/* 80BF7448  4E 80 00 20 */	blr 
