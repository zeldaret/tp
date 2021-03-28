lbl_80822DB8:
/* 80822DB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80822DBC  7C 08 02 A6 */	mflr r0
/* 80822DC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80822DC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80822DC8  7C 7F 1B 78 */	mr r31, r3
/* 80822DCC  3C 60 80 83 */	lis r3, lit_3902@ha
/* 80822DD0  39 43 88 50 */	addi r10, r3, lit_3902@l
/* 80822DD4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80822DD8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80822DDC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80822DE0  C0 0A 00 50 */	lfs f0, 0x50(r10)
/* 80822DE4  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80822DE8  EC 20 18 2A */	fadds f1, f0, f3
/* 80822DEC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80822DF0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80822DF4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80822DF8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80822DFC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80822E00  38 80 00 01 */	li r4, 1
/* 80822E04  38 C1 00 08 */	addi r6, r1, 8
/* 80822E08  C0 2A 00 54 */	lfs f1, 0x54(r10)
/* 80822E0C  C0 4A 00 58 */	lfs f2, 0x58(r10)
/* 80822E10  C0 9F 07 E4 */	lfs f4, 0x7e4(r31)
/* 80822E14  38 FF 08 3C */	addi r7, r31, 0x83c
/* 80822E18  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80822E1C  39 20 00 00 */	li r9, 0
/* 80822E20  C0 AA 00 08 */	lfs f5, 8(r10)
/* 80822E24  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80822E28  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80822E2C  4B 80 BA E4 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80822E30  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 80822E34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80822E38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80822E3C  7C 08 03 A6 */	mtlr r0
/* 80822E40  38 21 00 20 */	addi r1, r1, 0x20
/* 80822E44  4E 80 00 20 */	blr 
