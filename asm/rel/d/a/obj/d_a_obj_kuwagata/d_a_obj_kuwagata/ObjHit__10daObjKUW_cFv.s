lbl_80C4C38C:
/* 80C4C38C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C4C390  7C 08 02 A6 */	mflr r0
/* 80C4C394  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C4C398  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C4C39C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C4C3A0  7C 7F 1B 78 */	mr r31, r3
/* 80C4C3A4  3C 60 80 C5 */	lis r3, lit_3775@ha /* 0x80C4D490@ha */
/* 80C4C3A8  3B C3 D4 90 */	addi r30, r3, lit_3775@l /* 0x80C4D490@l */
/* 80C4C3AC  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C4C3B0  4B 43 80 B1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C4C3B4  28 03 00 00 */	cmplwi r3, 0
/* 80C4C3B8  41 82 01 44 */	beq lbl_80C4C4FC
/* 80C4C3BC  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C4C3C0  4B 43 81 39 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C4C3C4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80C4C3C8  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80C4C3CC  41 82 00 30 */	beq lbl_80C4C3FC
/* 80C4C3D0  88 1F 09 C1 */	lbz r0, 0x9c1(r31)
/* 80C4C3D4  28 00 00 00 */	cmplwi r0, 0
/* 80C4C3D8  40 82 01 10 */	bne lbl_80C4C4E8
/* 80C4C3DC  38 00 00 01 */	li r0, 1
/* 80C4C3E0  98 1F 09 C1 */	stb r0, 0x9c1(r31)
/* 80C4C3E4  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C4C3E8  4B 43 81 61 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C4C3EC  38 7F 07 04 */	addi r3, r31, 0x704
/* 80C4C3F0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C4C3F4  4B 51 21 BD */	bl initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80C4C3F8  48 00 00 F0 */	b lbl_80C4C4E8
lbl_80C4C3FC:
/* 80C4C3FC  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80C4C400  40 82 00 E8 */	bne lbl_80C4C4E8
/* 80C4C404  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80C4C408  41 82 00 E0 */	beq lbl_80C4C4E8
/* 80C4C40C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C4C410  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C4C414  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C4C418  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C4C41C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4C420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4C424  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C4C428  28 1F 00 00 */	cmplwi r31, 0
/* 80C4C42C  41 82 00 0C */	beq lbl_80C4C438
/* 80C4C430  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C4C434  48 00 00 08 */	b lbl_80C4C43C
lbl_80C4C438:
/* 80C4C438  38 80 FF FF */	li r4, -1
lbl_80C4C43C:
/* 80C4C43C  38 A1 00 08 */	addi r5, r1, 8
/* 80C4C440  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C4C444  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80C4C448  7D 89 03 A6 */	mtctr r12
/* 80C4C44C  4E 80 04 21 */	bctrl 
/* 80C4C450  38 00 00 01 */	li r0, 1
/* 80C4C454  98 1F 09 80 */	stb r0, 0x980(r31)
/* 80C4C458  38 00 00 02 */	li r0, 2
/* 80C4C45C  98 1F 09 81 */	stb r0, 0x981(r31)
/* 80C4C460  38 00 00 00 */	li r0, 0
/* 80C4C464  98 1F 09 C1 */	stb r0, 0x9c1(r31)
/* 80C4C468  3C 60 80 C5 */	lis r3, d_a_obj_kuwagata__stringBase0@ha /* 0x80C4D58C@ha */
/* 80C4C46C  38 63 D5 8C */	addi r3, r3, d_a_obj_kuwagata__stringBase0@l /* 0x80C4D58C@l */
/* 80C4C470  38 80 00 06 */	li r4, 6
/* 80C4C474  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4C478  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4C47C  3C A5 00 02 */	addis r5, r5, 2
/* 80C4C480  38 C0 00 80 */	li r6, 0x80
/* 80C4C484  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4C488  4B 3E FE 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4C48C  7C 64 1B 78 */	mr r4, r3
/* 80C4C490  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C4C494  38 A0 00 02 */	li r5, 2
/* 80C4C498  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80C4C49C  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 80C4C4A0  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80C4C4A4  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 80C4C4A8  4B 3C 49 C9 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C4C4AC  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80C4C4B0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C4C4B4  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80C4C4B8  4B 61 B4 9D */	bl cM_rndF__Ff
/* 80C4C4BC  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80C4C4C0  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4C4C4  D0 1F 09 88 */	stfs f0, 0x988(r31)
/* 80C4C4C8  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80C4C4CC  4B 61 B4 89 */	bl cM_rndF__Ff
/* 80C4C4D0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80C4C4D4  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4C4D8  FC 00 00 1E */	fctiwz f0, f0
/* 80C4C4DC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C4C4E0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C4C4E4  B0 1F 09 84 */	sth r0, 0x984(r31)
lbl_80C4C4E8:
/* 80C4C4E8  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C4C4EC  81 9F 06 08 */	lwz r12, 0x608(r31)
/* 80C4C4F0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C4C4F4  7D 89 03 A6 */	mtctr r12
/* 80C4C4F8  4E 80 04 21 */	bctrl 
lbl_80C4C4FC:
/* 80C4C4FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C4C500  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C4C504  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C4C508  7C 08 03 A6 */	mtlr r0
/* 80C4C50C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C4C510  4E 80 00 20 */	blr 
