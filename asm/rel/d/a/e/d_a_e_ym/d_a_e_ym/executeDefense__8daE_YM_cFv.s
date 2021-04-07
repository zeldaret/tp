lbl_8080E26C:
/* 8080E26C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8080E270  7C 08 02 A6 */	mflr r0
/* 8080E274  90 01 00 24 */	stw r0, 0x24(r1)
/* 8080E278  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8080E27C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8080E280  7C 7E 1B 78 */	mr r30, r3
/* 8080E284  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 8080E288  3B E3 59 94 */	addi r31, r3, lit_3925@l /* 0x80815994@l */
/* 8080E28C  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 8080E290  2C 00 00 01 */	cmpwi r0, 1
/* 8080E294  41 82 00 F8 */	beq lbl_8080E38C
/* 8080E298  40 80 00 10 */	bge lbl_8080E2A8
/* 8080E29C  2C 00 00 00 */	cmpwi r0, 0
/* 8080E2A0  40 80 00 14 */	bge lbl_8080E2B4
/* 8080E2A4  48 00 01 E0 */	b lbl_8080E484
lbl_8080E2A8:
/* 8080E2A8  2C 00 00 03 */	cmpwi r0, 3
/* 8080E2AC  40 80 01 D8 */	bge lbl_8080E484
/* 8080E2B0  48 00 01 98 */	b lbl_8080E448
lbl_8080E2B4:
/* 8080E2B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007011C@ha */
/* 8080E2B8  38 03 01 1C */	addi r0, r3, 0x011C /* 0x0007011C@l */
/* 8080E2BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8080E2C0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080E2C4  38 81 00 0C */	addi r4, r1, 0xc
/* 8080E2C8  38 A0 00 00 */	li r5, 0
/* 8080E2CC  38 C0 FF FF */	li r6, -1
/* 8080E2D0  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080E2D4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080E2D8  7D 89 03 A6 */	mtctr r12
/* 8080E2DC  4E 80 04 21 */	bctrl 
/* 8080E2E0  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 8080E2E4  28 00 00 01 */	cmplwi r0, 1
/* 8080E2E8  41 82 00 74 */	beq lbl_8080E35C
/* 8080E2EC  7F C3 F3 78 */	mr r3, r30
/* 8080E2F0  38 80 00 07 */	li r4, 7
/* 8080E2F4  38 A0 00 02 */	li r5, 2
/* 8080E2F8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8080E2FC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080E300  4B FF 9E E1 */	bl bckSet__8daE_YM_cFiUcff
/* 8080E304  38 80 00 01 */	li r4, 1
/* 8080E308  90 9E 06 98 */	stw r4, 0x698(r30)
/* 8080E30C  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 8080E310  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8080E314  A8 7E 06 EA */	lha r3, 0x6ea(r30)
/* 8080E318  3C 63 00 01 */	addis r3, r3, 1
/* 8080E31C  38 03 80 00 */	addi r0, r3, -32768
/* 8080E320  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8080E324  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8080E328  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080E32C  41 82 00 14 */	beq lbl_8080E340
/* 8080E330  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8080E334  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080E338  98 9E 06 A5 */	stb r4, 0x6a5(r30)
/* 8080E33C  48 00 01 48 */	b lbl_8080E484
lbl_8080E340:
/* 8080E340  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8080E344  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080E348  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 8080E34C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8080E350  38 00 00 00 */	li r0, 0
/* 8080E354  98 1E 06 A5 */	stb r0, 0x6a5(r30)
/* 8080E358  48 00 01 2C */	b lbl_8080E484
lbl_8080E35C:
/* 8080E35C  7F C3 F3 78 */	mr r3, r30
/* 8080E360  38 80 00 07 */	li r4, 7
/* 8080E364  38 A0 00 00 */	li r5, 0
/* 8080E368  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8080E36C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080E370  4B FF 9E 71 */	bl bckSet__8daE_YM_cFiUcff
/* 8080E374  38 00 00 02 */	li r0, 2
/* 8080E378  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080E37C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080E380  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8080E384  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080E388  48 00 00 FC */	b lbl_8080E484
lbl_8080E38C:
/* 8080E38C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8080E390  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8080E394  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 8080E398  4B A6 23 A9 */	bl cLib_chaseF__FPfff
/* 8080E39C  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8080E3A0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080E3A4  41 82 00 E0 */	beq lbl_8080E484
/* 8080E3A8  88 1E 06 A5 */	lbz r0, 0x6a5(r30)
/* 8080E3AC  28 00 00 00 */	cmplwi r0, 0
/* 8080E3B0  40 82 00 38 */	bne lbl_8080E3E8
/* 8080E3B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007011E@ha */
/* 8080E3B8  38 03 01 1E */	addi r0, r3, 0x011E /* 0x0007011E@l */
/* 8080E3BC  90 01 00 08 */	stw r0, 8(r1)
/* 8080E3C0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080E3C4  38 81 00 08 */	addi r4, r1, 8
/* 8080E3C8  38 A0 00 00 */	li r5, 0
/* 8080E3CC  38 C0 FF FF */	li r6, -1
/* 8080E3D0  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080E3D4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080E3D8  7D 89 03 A6 */	mtctr r12
/* 8080E3DC  4E 80 04 21 */	bctrl 
/* 8080E3E0  38 00 00 01 */	li r0, 1
/* 8080E3E4  98 1E 06 A5 */	stb r0, 0x6a5(r30)
lbl_8080E3E8:
/* 8080E3E8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8080E3EC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8080E3F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E3F4  4C 41 13 82 */	cror 2, 1, 2
/* 8080E3F8  40 82 00 24 */	bne lbl_8080E41C
/* 8080E3FC  38 7E 0A D0 */	addi r3, r30, 0xad0
/* 8080E400  38 9E 0A D4 */	addi r4, r30, 0xad4
/* 8080E404  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8080E408  38 C0 00 00 */	li r6, 0
/* 8080E40C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8080E410  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8080E414  39 00 00 00 */	li r8, 0
/* 8080E418  4B 80 EC 09 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_8080E41C:
/* 8080E41C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080E420  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 8080E424  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8080E428  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080E42C  4B A6 23 15 */	bl cLib_chaseF__FPfff
/* 8080E430  2C 03 00 00 */	cmpwi r3, 0
/* 8080E434  41 82 00 50 */	beq lbl_8080E484
/* 8080E438  7F C3 F3 78 */	mr r3, r30
/* 8080E43C  38 80 00 00 */	li r4, 0
/* 8080E440  4B FF BB 5D */	bl setActionMode__8daE_YM_cFi
/* 8080E444  48 00 00 40 */	b lbl_8080E484
lbl_8080E448:
/* 8080E448  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8080E44C  38 80 00 01 */	li r4, 1
/* 8080E450  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080E454  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080E458  40 82 00 18 */	bne lbl_8080E470
/* 8080E45C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080E460  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080E464  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080E468  41 82 00 08 */	beq lbl_8080E470
/* 8080E46C  38 80 00 00 */	li r4, 0
lbl_8080E470:
/* 8080E470  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080E474  41 82 00 10 */	beq lbl_8080E484
/* 8080E478  7F C3 F3 78 */	mr r3, r30
/* 8080E47C  38 80 00 00 */	li r4, 0
/* 8080E480  4B FF BB 1D */	bl setActionMode__8daE_YM_cFi
lbl_8080E484:
/* 8080E484  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8080E488  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8080E48C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8080E490  7C 08 03 A6 */	mtlr r0
/* 8080E494  38 21 00 20 */	addi r1, r1, 0x20
/* 8080E498  4E 80 00 20 */	blr 
