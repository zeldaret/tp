lbl_8000C8D0:
/* 8000C8D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000C8D4  7C 08 02 A6 */	mflr r0
/* 8000C8D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000C8DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8000C8E0  48 35 58 FD */	bl _savegpr_29
/* 8000C8E4  7C 7D 1B 78 */	mr r29, r3
/* 8000C8E8  7C 9E 23 78 */	mr r30, r4
/* 8000C8EC  7C BF 2B 78 */	mr r31, r5
/* 8000C8F0  48 33 9B F5 */	bl PSMTXConcat
/* 8000C8F4  C0 DD 00 38 */	lfs f6, 0x38(r29)
/* 8000C8F8  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8000C8FC  EC 46 00 32 */	fmuls f2, f6, f0
/* 8000C900  C0 BD 00 30 */	lfs f5, 0x30(r29)
/* 8000C904  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8000C908  EC 25 00 32 */	fmuls f1, f5, f0
/* 8000C90C  C0 9D 00 34 */	lfs f4, 0x34(r29)
/* 8000C910  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8000C914  EC 04 00 32 */	fmuls f0, f4, f0
/* 8000C918  EC 01 00 2A */	fadds f0, f1, f0
/* 8000C91C  EC 02 00 2A */	fadds f0, f2, f0
/* 8000C920  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8000C924  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8000C928  EC 46 00 32 */	fmuls f2, f6, f0
/* 8000C92C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8000C930  EC 25 00 32 */	fmuls f1, f5, f0
/* 8000C934  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8000C938  EC 04 00 32 */	fmuls f0, f4, f0
/* 8000C93C  EC 01 00 2A */	fadds f0, f1, f0
/* 8000C940  EC 02 00 2A */	fadds f0, f2, f0
/* 8000C944  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8000C948  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8000C94C  EC 46 00 32 */	fmuls f2, f6, f0
/* 8000C950  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8000C954  EC 25 00 32 */	fmuls f1, f5, f0
/* 8000C958  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8000C95C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8000C960  EC 01 00 2A */	fadds f0, f1, f0
/* 8000C964  EC 02 00 2A */	fadds f0, f2, f0
/* 8000C968  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8000C96C  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 8000C970  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8000C974  EC 46 00 32 */	fmuls f2, f6, f0
/* 8000C978  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8000C97C  EC 25 00 32 */	fmuls f1, f5, f0
/* 8000C980  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8000C984  EC 04 00 32 */	fmuls f0, f4, f0
/* 8000C988  EC 01 00 2A */	fadds f0, f1, f0
/* 8000C98C  EC 02 00 2A */	fadds f0, f2, f0
/* 8000C990  EC 03 00 2A */	fadds f0, f3, f0
/* 8000C994  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8000C998  39 61 00 20 */	addi r11, r1, 0x20
/* 8000C99C  48 35 58 8D */	bl _restgpr_29
/* 8000C9A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000C9A4  7C 08 03 A6 */	mtlr r0
/* 8000C9A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8000C9AC  4E 80 00 20 */	blr 
