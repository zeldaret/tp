lbl_80C0C3E0:
/* 80C0C3E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C0C3E4  7C 08 02 A6 */	mflr r0
/* 80C0C3E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C0C3EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C0C3F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C0C3F4  7C 7E 1B 78 */	mr r30, r3
/* 80C0C3F8  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha
/* 80C0C3FC  3B E3 FA 7C */	addi r31, r3, m__17daObj_GrA_Param_c@l
/* 80C0C400  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C0C404  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C0C408  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80C0C40C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C0C410  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C0C414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C0C418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C0C41C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C0C420  38 80 00 08 */	li r4, 8
/* 80C0C424  38 A0 00 0F */	li r5, 0xf
/* 80C0C428  38 C1 00 08 */	addi r6, r1, 8
/* 80C0C42C  4B 46 36 E4 */	b StartQuake__12dVibration_cFii4cXyz
/* 80C0C430  38 00 00 02 */	li r0, 2
/* 80C0C434  90 1E 1F F0 */	stw r0, 0x1ff0(r30)
/* 80C0C438  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0C43C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C0C440  38 00 00 00 */	li r0, 0
/* 80C0C444  98 1E 1F F4 */	stb r0, 0x1ff4(r30)
/* 80C0C448  7F C3 F3 78 */	mr r3, r30
/* 80C0C44C  C0 3F 03 00 */	lfs f1, 0x300(r31)
/* 80C0C450  38 80 00 01 */	li r4, 1
/* 80C0C454  4B FF FA E1 */	bl calcCatchPos__11daObj_GrA_cFfi
/* 80C0C458  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0C45C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80C0C460  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C0C464  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C0C468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C0C46C  7C 08 03 A6 */	mtlr r0
/* 80C0C470  38 21 00 20 */	addi r1, r1, 0x20
/* 80C0C474  4E 80 00 20 */	blr 
