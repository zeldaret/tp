lbl_802FB240:
/* 802FB240  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802FB244  7C 08 02 A6 */	mflr r0
/* 802FB248  90 01 00 64 */	stw r0, 0x64(r1)
/* 802FB24C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 802FB250  7C 7F 1B 78 */	mr r31, r3
/* 802FB254  C0 A3 00 20 */	lfs f5, 0x20(r3)
/* 802FB258  D0 A1 00 08 */	stfs f5, 8(r1)
/* 802FB25C  C0 83 00 24 */	lfs f4, 0x24(r3)
/* 802FB260  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 802FB264  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 802FB268  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802FB26C  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 802FB270  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 802FB274  EC A5 08 2A */	fadds f5, f5, f1
/* 802FB278  D0 A1 00 08 */	stfs f5, 8(r1)
/* 802FB27C  EC 84 10 2A */	fadds f4, f4, f2
/* 802FB280  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 802FB284  EC 00 08 2A */	fadds f0, f0, f1
/* 802FB288  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802FB28C  EC 63 10 2A */	fadds f3, f3, f2
/* 802FB290  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 802FB294  EC 20 28 28 */	fsubs f1, f0, f5
/* 802FB298  A8 03 01 40 */	lha r0, 0x140(r3)
/* 802FB29C  C8 42 C8 40 */	lfd f2, lit_1971(r2)
/* 802FB2A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FB2A4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802FB2A8  3C 60 43 30 */	lis r3, 0x4330
/* 802FB2AC  90 61 00 48 */	stw r3, 0x48(r1)
/* 802FB2B0  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 802FB2B4  EC 00 10 28 */	fsubs f0, f0, f2
/* 802FB2B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802FB2BC  4C 41 13 82 */	cror 2, 1, 2
/* 802FB2C0  40 82 00 58 */	bne lbl_802FB318
/* 802FB2C4  EC 23 20 28 */	fsubs f1, f3, f4
/* 802FB2C8  A8 1F 01 42 */	lha r0, 0x142(r31)
/* 802FB2CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FB2D0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802FB2D4  90 61 00 48 */	stw r3, 0x48(r1)
/* 802FB2D8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 802FB2DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 802FB2E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802FB2E4  4C 41 13 82 */	cror 2, 1, 2
/* 802FB2E8  40 82 00 30 */	bne lbl_802FB318
/* 802FB2EC  7C 83 23 78 */	mr r3, r4
/* 802FB2F0  38 9F 00 80 */	addi r4, r31, 0x80
/* 802FB2F4  38 A1 00 18 */	addi r5, r1, 0x18
/* 802FB2F8  48 04 B1 ED */	bl PSMTXConcat
/* 802FB2FC  38 61 00 18 */	addi r3, r1, 0x18
/* 802FB300  38 80 00 00 */	li r4, 0
/* 802FB304  48 06 4F 49 */	bl GXLoadPosMtxImm
/* 802FB308  7F E3 FB 78 */	mr r3, r31
/* 802FB30C  38 81 00 08 */	addi r4, r1, 8
/* 802FB310  38 BF 01 14 */	addi r5, r31, 0x114
/* 802FB314  4B FF F7 49 */	bl func_802FAA5C
lbl_802FB318:
/* 802FB318  7F E3 FB 78 */	mr r3, r31
/* 802FB31C  38 9F 01 14 */	addi r4, r31, 0x114
/* 802FB320  4B FF BF 45 */	bl func_802F7264
/* 802FB324  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 802FB328  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802FB32C  7C 08 03 A6 */	mtlr r0
/* 802FB330  38 21 00 60 */	addi r1, r1, 0x60
/* 802FB334  4E 80 00 20 */	blr 
