lbl_80C37324:
/* 80C37324  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C37328  7C 08 02 A6 */	mflr r0
/* 80C3732C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C37330  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C37334  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C37338  7C 7F 1B 78 */	mr r31, r3
/* 80C3733C  3C 60 80 C4 */	lis r3, lit_3775@ha /* 0x80C38408@ha */
/* 80C37340  3B C3 84 08 */	addi r30, r3, lit_3775@l /* 0x80C38408@l */
/* 80C37344  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C37348  4B 44 D1 19 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C3734C  28 03 00 00 */	cmplwi r3, 0
/* 80C37350  41 82 01 44 */	beq lbl_80C37494
/* 80C37354  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C37358  4B 44 D1 A1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C3735C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80C37360  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80C37364  41 82 00 30 */	beq lbl_80C37394
/* 80C37368  88 1F 09 C1 */	lbz r0, 0x9c1(r31)
/* 80C3736C  28 00 00 00 */	cmplwi r0, 0
/* 80C37370  40 82 01 10 */	bne lbl_80C37480
/* 80C37374  38 00 00 01 */	li r0, 1
/* 80C37378  98 1F 09 C1 */	stb r0, 0x9c1(r31)
/* 80C3737C  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C37380  4B 44 D1 C9 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C37384  38 7F 07 04 */	addi r3, r31, 0x704
/* 80C37388  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C3738C  4B 52 72 25 */	bl initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80C37390  48 00 00 F0 */	b lbl_80C37480
lbl_80C37394:
/* 80C37394  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80C37398  40 82 00 E8 */	bne lbl_80C37480
/* 80C3739C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80C373A0  41 82 00 E0 */	beq lbl_80C37480
/* 80C373A4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C373A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C373AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C373B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C373B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C373B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C373BC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C373C0  28 1F 00 00 */	cmplwi r31, 0
/* 80C373C4  41 82 00 0C */	beq lbl_80C373D0
/* 80C373C8  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C373CC  48 00 00 08 */	b lbl_80C373D4
lbl_80C373D0:
/* 80C373D0  38 80 FF FF */	li r4, -1
lbl_80C373D4:
/* 80C373D4  38 A1 00 08 */	addi r5, r1, 8
/* 80C373D8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C373DC  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80C373E0  7D 89 03 A6 */	mtctr r12
/* 80C373E4  4E 80 04 21 */	bctrl 
/* 80C373E8  38 00 00 01 */	li r0, 1
/* 80C373EC  98 1F 09 80 */	stb r0, 0x980(r31)
/* 80C373F0  38 00 00 02 */	li r0, 2
/* 80C373F4  98 1F 09 81 */	stb r0, 0x981(r31)
/* 80C373F8  38 00 00 00 */	li r0, 0
/* 80C373FC  98 1F 09 C1 */	stb r0, 0x9c1(r31)
/* 80C37400  3C 60 80 C4 */	lis r3, d_a_obj_kamakiri__stringBase0@ha /* 0x80C384FC@ha */
/* 80C37404  38 63 84 FC */	addi r3, r3, d_a_obj_kamakiri__stringBase0@l /* 0x80C384FC@l */
/* 80C37408  38 80 00 06 */	li r4, 6
/* 80C3740C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C37410  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C37414  3C A5 00 02 */	addis r5, r5, 2
/* 80C37418  38 C0 00 80 */	li r6, 0x80
/* 80C3741C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C37420  4B 40 4E CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C37424  7C 64 1B 78 */	mr r4, r3
/* 80C37428  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C3742C  38 A0 00 02 */	li r5, 2
/* 80C37430  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80C37434  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 80C37438  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80C3743C  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 80C37440  4B 3D 9A 31 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C37444  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80C37448  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C3744C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80C37450  4B 63 05 05 */	bl cM_rndF__Ff
/* 80C37454  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80C37458  EC 00 08 2A */	fadds f0, f0, f1
/* 80C3745C  D0 1F 09 88 */	stfs f0, 0x988(r31)
/* 80C37460  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80C37464  4B 63 04 F1 */	bl cM_rndF__Ff
/* 80C37468  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80C3746C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C37470  FC 00 00 1E */	fctiwz f0, f0
/* 80C37474  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C37478  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C3747C  B0 1F 09 84 */	sth r0, 0x984(r31)
lbl_80C37480:
/* 80C37480  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C37484  81 9F 06 08 */	lwz r12, 0x608(r31)
/* 80C37488  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C3748C  7D 89 03 A6 */	mtctr r12
/* 80C37490  4E 80 04 21 */	bctrl 
lbl_80C37494:
/* 80C37494  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C37498  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C3749C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C374A0  7C 08 03 A6 */	mtlr r0
/* 80C374A4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C374A8  4E 80 00 20 */	blr 
