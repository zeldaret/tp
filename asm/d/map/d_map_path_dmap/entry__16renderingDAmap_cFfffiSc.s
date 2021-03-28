lbl_8003FD08:
/* 8003FD08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003FD0C  7C 08 02 A6 */	mflr r0
/* 8003FD10  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003FD14  7C 66 1B 78 */	mr r6, r3
/* 8003FD18  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8003FD1C  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8003FD20  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 8003FD24  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8003FD28  A0 03 00 20 */	lhz r0, 0x20(r3)
/* 8003FD2C  C8 42 84 40 */	lfd f2, lit_4211(r2)
/* 8003FD30  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003FD34  3C 60 43 30 */	lis r3, 0x4330
/* 8003FD38  90 61 00 08 */	stw r3, 8(r1)
/* 8003FD3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8003FD40  EC 00 10 28 */	fsubs f0, f0, f2
/* 8003FD44  EC 01 00 32 */	fmuls f0, f1, f0
/* 8003FD48  D0 06 00 08 */	stfs f0, 8(r6)
/* 8003FD4C  C0 26 00 18 */	lfs f1, 0x18(r6)
/* 8003FD50  A0 06 00 22 */	lhz r0, 0x22(r6)
/* 8003FD54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003FD58  90 61 00 10 */	stw r3, 0x10(r1)
/* 8003FD5C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8003FD60  EC 00 10 28 */	fsubs f0, f0, f2
/* 8003FD64  EC 01 00 32 */	fmuls f0, f1, f0
/* 8003FD68  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 8003FD6C  90 86 00 2C */	stw r4, 0x2c(r6)
/* 8003FD70  98 A6 00 30 */	stb r5, 0x30(r6)
/* 8003FD74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003FD78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003FD7C  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8003FD80  38 83 00 64 */	addi r4, r3, 0x64
/* 8003FD84  38 A3 00 68 */	addi r5, r3, 0x68
/* 8003FD88  48 01 6A 0D */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8003FD8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003FD90  7C 08 03 A6 */	mtlr r0
/* 8003FD94  38 21 00 20 */	addi r1, r1, 0x20
/* 8003FD98  4E 80 00 20 */	blr 
