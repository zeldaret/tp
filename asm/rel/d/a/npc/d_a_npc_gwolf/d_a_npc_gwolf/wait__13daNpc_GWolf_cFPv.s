lbl_809F71E0:
/* 809F71E0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809F71E4  7C 08 02 A6 */	mflr r0
/* 809F71E8  90 01 00 54 */	stw r0, 0x54(r1)
/* 809F71EC  39 61 00 50 */	addi r11, r1, 0x50
/* 809F71F0  4B 96 AF E9 */	bl _savegpr_28
/* 809F71F4  7C 7D 1B 78 */	mr r29, r3
/* 809F71F8  3C 80 80 A0 */	lis r4, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F71FC  3B C4 84 F4 */	addi r30, r4, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F7200  A0 03 0E 0E */	lhz r0, 0xe0e(r3)
/* 809F7204  2C 00 00 02 */	cmpwi r0, 2
/* 809F7208  41 82 00 58 */	beq lbl_809F7260
/* 809F720C  40 80 03 98 */	bge lbl_809F75A4
/* 809F7210  2C 00 00 00 */	cmpwi r0, 0
/* 809F7214  41 82 00 0C */	beq lbl_809F7220
/* 809F7218  48 00 03 8C */	b lbl_809F75A4
/* 809F721C  48 00 03 88 */	b lbl_809F75A4
lbl_809F7220:
/* 809F7220  38 80 00 00 */	li r4, 0
/* 809F7224  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809F7228  38 A0 00 00 */	li r5, 0
/* 809F722C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809F7230  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F7234  7D 89 03 A6 */	mtctr r12
/* 809F7238  4E 80 04 21 */	bctrl 
/* 809F723C  7F A3 EB 78 */	mr r3, r29
/* 809F7240  38 80 00 00 */	li r4, 0
/* 809F7244  4B FF E9 1D */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F7248  38 00 00 00 */	li r0, 0
/* 809F724C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809F7250  38 00 00 01 */	li r0, 1
/* 809F7254  98 1D 09 EA */	stb r0, 0x9ea(r29)
/* 809F7258  38 00 00 02 */	li r0, 2
/* 809F725C  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
lbl_809F7260:
/* 809F7260  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F7264  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F7268  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 809F726C  C0 43 04 D0 */	lfs f2, 0x4d0(r3)
/* 809F7270  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 809F7274  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 809F7278  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 809F727C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 809F7280  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809F7284  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 809F7288  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 809F728C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809F7290  FC 20 08 18 */	frsp f1, f1
/* 809F7294  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 809F7298  EC 01 00 2A */	fadds f0, f1, f0
/* 809F729C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809F72A0  38 61 00 24 */	addi r3, r1, 0x24
/* 809F72A4  4B 62 6A 19 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 809F72A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F72AC  41 82 00 10 */	beq lbl_809F72BC
/* 809F72B0  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 809F72B4  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 809F72B8  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_809F72BC:
/* 809F72BC  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 809F72C0  28 00 00 00 */	cmplwi r0, 0
/* 809F72C4  40 82 01 94 */	bne lbl_809F7458
/* 809F72C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F72CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F72D0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809F72D4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809F72D8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809F72DC  40 82 01 7C */	bne lbl_809F7458
/* 809F72E0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 809F72E4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 809F72E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 809F72EC  FC 00 02 10 */	fabs f0, f0
/* 809F72F0  FC 20 00 18 */	frsp f1, f0
/* 809F72F4  C0 1E 02 0C */	lfs f0, 0x20c(r30)
/* 809F72F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F72FC  40 80 01 5C */	bge lbl_809F7458
/* 809F7300  38 61 00 18 */	addi r3, r1, 0x18
/* 809F7304  38 81 00 30 */	addi r4, r1, 0x30
/* 809F7308  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 809F730C  4B 86 F8 29 */	bl __mi__4cXyzCFRC3Vec
/* 809F7310  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809F7314  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809F7318  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F731C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809F7320  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809F7324  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809F7328  38 61 00 0C */	addi r3, r1, 0xc
/* 809F732C  4B 94 FE 0D */	bl PSVECSquareMag
/* 809F7330  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F7334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F7338  40 81 00 58 */	ble lbl_809F7390
/* 809F733C  FC 00 08 34 */	frsqrte f0, f1
/* 809F7340  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 809F7344  FC 44 00 32 */	fmul f2, f4, f0
/* 809F7348  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 809F734C  FC 00 00 32 */	fmul f0, f0, f0
/* 809F7350  FC 01 00 32 */	fmul f0, f1, f0
/* 809F7354  FC 03 00 28 */	fsub f0, f3, f0
/* 809F7358  FC 02 00 32 */	fmul f0, f2, f0
/* 809F735C  FC 44 00 32 */	fmul f2, f4, f0
/* 809F7360  FC 00 00 32 */	fmul f0, f0, f0
/* 809F7364  FC 01 00 32 */	fmul f0, f1, f0
/* 809F7368  FC 03 00 28 */	fsub f0, f3, f0
/* 809F736C  FC 02 00 32 */	fmul f0, f2, f0
/* 809F7370  FC 44 00 32 */	fmul f2, f4, f0
/* 809F7374  FC 00 00 32 */	fmul f0, f0, f0
/* 809F7378  FC 01 00 32 */	fmul f0, f1, f0
/* 809F737C  FC 03 00 28 */	fsub f0, f3, f0
/* 809F7380  FC 02 00 32 */	fmul f0, f2, f0
/* 809F7384  FC 21 00 32 */	fmul f1, f1, f0
/* 809F7388  FC 20 08 18 */	frsp f1, f1
/* 809F738C  48 00 00 88 */	b lbl_809F7414
lbl_809F7390:
/* 809F7390  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 809F7394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F7398  40 80 00 10 */	bge lbl_809F73A8
/* 809F739C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809F73A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809F73A4  48 00 00 70 */	b lbl_809F7414
lbl_809F73A8:
/* 809F73A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 809F73AC  80 81 00 08 */	lwz r4, 8(r1)
/* 809F73B0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809F73B4  3C 00 7F 80 */	lis r0, 0x7f80
/* 809F73B8  7C 03 00 00 */	cmpw r3, r0
/* 809F73BC  41 82 00 14 */	beq lbl_809F73D0
/* 809F73C0  40 80 00 40 */	bge lbl_809F7400
/* 809F73C4  2C 03 00 00 */	cmpwi r3, 0
/* 809F73C8  41 82 00 20 */	beq lbl_809F73E8
/* 809F73CC  48 00 00 34 */	b lbl_809F7400
lbl_809F73D0:
/* 809F73D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F73D4  41 82 00 0C */	beq lbl_809F73E0
/* 809F73D8  38 00 00 01 */	li r0, 1
/* 809F73DC  48 00 00 28 */	b lbl_809F7404
lbl_809F73E0:
/* 809F73E0  38 00 00 02 */	li r0, 2
/* 809F73E4  48 00 00 20 */	b lbl_809F7404
lbl_809F73E8:
/* 809F73E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F73EC  41 82 00 0C */	beq lbl_809F73F8
/* 809F73F0  38 00 00 05 */	li r0, 5
/* 809F73F4  48 00 00 10 */	b lbl_809F7404
lbl_809F73F8:
/* 809F73F8  38 00 00 03 */	li r0, 3
/* 809F73FC  48 00 00 08 */	b lbl_809F7404
lbl_809F7400:
/* 809F7400  38 00 00 04 */	li r0, 4
lbl_809F7404:
/* 809F7404  2C 00 00 01 */	cmpwi r0, 1
/* 809F7408  40 82 00 0C */	bne lbl_809F7414
/* 809F740C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809F7410  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_809F7414:
/* 809F7414  38 7E 00 00 */	addi r3, r30, 0
/* 809F7418  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 809F741C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F7420  40 80 00 38 */	bge lbl_809F7458
/* 809F7424  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 809F7428  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809F742C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 809F7430  7D 89 03 A6 */	mtctr r12
/* 809F7434  4E 80 04 21 */	bctrl 
/* 809F7438  28 03 00 00 */	cmplwi r3, 0
/* 809F743C  41 82 00 10 */	beq lbl_809F744C
/* 809F7440  38 00 00 02 */	li r0, 2
/* 809F7444  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 809F7448  48 00 01 5C */	b lbl_809F75A4
lbl_809F744C:
/* 809F744C  38 00 00 01 */	li r0, 1
/* 809F7450  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 809F7454  48 00 01 50 */	b lbl_809F75A4
lbl_809F7458:
/* 809F7458  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809F745C  28 00 00 00 */	cmplwi r0, 0
/* 809F7460  40 82 01 44 */	bne lbl_809F75A4
/* 809F7464  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 809F7468  4B 75 92 85 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809F746C  30 03 FF FF */	addic r0, r3, -1
/* 809F7470  7C 00 19 10 */	subfe r0, r0, r3
/* 809F7474  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 809F7478  7F A3 EB 78 */	mr r3, r29
/* 809F747C  7F 84 E3 78 */	mr r4, r28
/* 809F7480  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 809F7484  4B 75 D5 5D */	bl chkFindPlayer2__8daNpcF_cFis
/* 809F7488  2C 03 00 00 */	cmpwi r3, 0
/* 809F748C  41 82 00 24 */	beq lbl_809F74B0
/* 809F7490  2C 1C 00 00 */	cmpwi r28, 0
/* 809F7494  40 82 00 34 */	bne lbl_809F74C8
/* 809F7498  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 809F749C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809F74A0  4B 75 92 1D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809F74A4  38 00 00 00 */	li r0, 0
/* 809F74A8  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809F74AC  48 00 00 1C */	b lbl_809F74C8
lbl_809F74B0:
/* 809F74B0  2C 1C 00 00 */	cmpwi r28, 0
/* 809F74B4  41 82 00 14 */	beq lbl_809F74C8
/* 809F74B8  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 809F74BC  4B 75 92 25 */	bl remove__18daNpcF_ActorMngr_cFv
/* 809F74C0  38 00 00 00 */	li r0, 0
/* 809F74C4  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_809F74C8:
/* 809F74C8  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 809F74CC  4B 75 92 21 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809F74D0  28 03 00 00 */	cmplwi r3, 0
/* 809F74D4  41 82 00 14 */	beq lbl_809F74E8
/* 809F74D8  7F A3 EB 78 */	mr r3, r29
/* 809F74DC  38 80 00 02 */	li r4, 2
/* 809F74E0  4B FF E6 81 */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F74E4  48 00 00 44 */	b lbl_809F7528
lbl_809F74E8:
/* 809F74E8  7F A3 EB 78 */	mr r3, r29
/* 809F74EC  38 80 00 00 */	li r4, 0
/* 809F74F0  4B FF E6 71 */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F74F4  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 809F74F8  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809F74FC  7C 04 00 00 */	cmpw r4, r0
/* 809F7500  41 82 00 28 */	beq lbl_809F7528
/* 809F7504  7F A3 EB 78 */	mr r3, r29
/* 809F7508  38 A0 FF FF */	li r5, -1
/* 809F750C  38 C0 FF FF */	li r6, -1
/* 809F7510  38 E0 00 0F */	li r7, 0xf
/* 809F7514  4B 75 CB 91 */	bl step__8daNpcF_cFsiii
/* 809F7518  2C 03 00 00 */	cmpwi r3, 0
/* 809F751C  41 82 00 0C */	beq lbl_809F7528
/* 809F7520  38 00 00 00 */	li r0, 0
/* 809F7524  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
lbl_809F7528:
/* 809F7528  A8 7D 04 B6 */	lha r3, 0x4b6(r29)
/* 809F752C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809F7530  7C 03 00 00 */	cmpw r3, r0
/* 809F7534  40 82 00 68 */	bne lbl_809F759C
/* 809F7538  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 809F753C  4B 75 91 B1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809F7540  30 03 FF FF */	addic r0, r3, -1
/* 809F7544  7C 00 19 10 */	subfe r0, r0, r3
/* 809F7548  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 809F754C  7F A3 EB 78 */	mr r3, r29
/* 809F7550  3C A0 80 15 */	lis r5, srchAttnActor1__8daNpcF_cFPvPv@ha /* 0x80152654@ha */
/* 809F7554  38 A5 26 54 */	addi r5, r5, srchAttnActor1__8daNpcF_cFPvPv@l /* 0x80152654@l */
/* 809F7558  38 DE 00 00 */	addi r6, r30, 0
/* 809F755C  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 809F7560  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 809F7564  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 809F7568  C0 86 00 50 */	lfs f4, 0x50(r6)
/* 809F756C  A8 DD 04 E6 */	lha r6, 0x4e6(r29)
/* 809F7570  38 E0 00 78 */	li r7, 0x78
/* 809F7574  39 00 00 01 */	li r8, 1
/* 809F7578  4B 75 CD F5 */	bl getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
/* 809F757C  7C 64 1B 79 */	or. r4, r3, r3
/* 809F7580  41 82 00 24 */	beq lbl_809F75A4
/* 809F7584  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 809F7588  4B 75 91 35 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809F758C  7F A3 EB 78 */	mr r3, r29
/* 809F7590  38 80 00 04 */	li r4, 4
/* 809F7594  4B FF E5 CD */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F7598  48 00 00 0C */	b lbl_809F75A4
lbl_809F759C:
/* 809F759C  38 00 00 00 */	li r0, 0
/* 809F75A0  90 1D 09 38 */	stw r0, 0x938(r29)
lbl_809F75A4:
/* 809F75A4  38 60 00 01 */	li r3, 1
/* 809F75A8  39 61 00 50 */	addi r11, r1, 0x50
/* 809F75AC  4B 96 AC 79 */	bl _restgpr_28
/* 809F75B0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809F75B4  7C 08 03 A6 */	mtlr r0
/* 809F75B8  38 21 00 50 */	addi r1, r1, 0x50
/* 809F75BC  4E 80 00 20 */	blr 
