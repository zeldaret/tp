lbl_80277CC8:
/* 80277CC8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80277CCC  7C 08 02 A6 */	mflr r0
/* 80277CD0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80277CD4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80277CD8  7C 66 1B 78 */	mr r6, r3
/* 80277CDC  7C 9F 23 78 */	mr r31, r4
/* 80277CE0  80 63 00 04 */	lwz r3, 4(r3)
/* 80277CE4  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 80277CE8  80 66 00 00 */	lwz r3, 0(r6)
/* 80277CEC  80 03 01 00 */	lwz r0, 0x100(r3)
/* 80277CF0  C8 82 B8 C8 */	lfd f4, lit_2744(r2)
/* 80277CF4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80277CF8  3C 80 43 30 */	lis r4, 0x4330
/* 80277CFC  90 81 00 38 */	stw r4, 0x38(r1)
/* 80277D00  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80277D04  EC A0 20 28 */	fsubs f5, f0, f4
/* 80277D08  C0 62 B8 B8 */	lfs f3, lit_2740(r2)
/* 80277D0C  C0 02 B8 BC */	lfs f0, lit_2741(r2)
/* 80277D10  80 65 00 00 */	lwz r3, 0(r5)
/* 80277D14  80 63 00 08 */	lwz r3, 8(r3)
/* 80277D18  54 60 3F FE */	rlwinm r0, r3, 7, 0x1f, 0x1f
/* 80277D1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80277D20  90 81 00 40 */	stw r4, 0x40(r1)
/* 80277D24  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 80277D28  EC 21 20 28 */	fsubs f1, f1, f4
/* 80277D2C  EC 20 08 2A */	fadds f1, f0, f1
/* 80277D30  EC 23 00 72 */	fmuls f1, f3, f1
/* 80277D34  54 60 37 FE */	rlwinm r0, r3, 6, 0x1f, 0x1f
/* 80277D38  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80277D3C  90 81 00 48 */	stw r4, 0x48(r1)
/* 80277D40  C8 41 00 48 */	lfd f2, 0x48(r1)
/* 80277D44  EC 42 20 28 */	fsubs f2, f2, f4
/* 80277D48  EC 40 10 2A */	fadds f2, f0, f2
/* 80277D4C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80277D50  80 65 00 04 */	lwz r3, 4(r5)
/* 80277D54  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 80277D58  EC 85 00 F2 */	fmuls f4, f5, f3
/* 80277D5C  C0 63 00 00 */	lfs f3, 0(r3)
/* 80277D60  ED 24 18 2A */	fadds f9, f4, f3
/* 80277D64  C0 63 00 18 */	lfs f3, 0x18(r3)
/* 80277D68  EC 85 00 F2 */	fmuls f4, f5, f3
/* 80277D6C  C0 63 00 04 */	lfs f3, 4(r3)
/* 80277D70  ED 04 18 2A */	fadds f8, f4, f3
/* 80277D74  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 80277D78  EC 85 00 F2 */	fmuls f4, f5, f3
/* 80277D7C  C0 63 00 08 */	lfs f3, 8(r3)
/* 80277D80  ED 44 18 2A */	fadds f10, f4, f3
/* 80277D84  C0 63 00 20 */	lfs f3, 0x20(r3)
/* 80277D88  EC 85 00 F2 */	fmuls f4, f5, f3
/* 80277D8C  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80277D90  ED 64 18 2A */	fadds f11, f4, f3
/* 80277D94  C0 63 00 24 */	lfs f3, 0x24(r3)
/* 80277D98  EC 85 00 F2 */	fmuls f4, f5, f3
/* 80277D9C  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 80277DA0  EC 64 18 2A */	fadds f3, f4, f3
/* 80277DA4  FC 60 18 1E */	fctiwz f3, f3
/* 80277DA8  D8 61 00 50 */	stfd f3, 0x50(r1)
/* 80277DAC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80277DB0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80277DB4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80277DB8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80277DBC  7C C3 04 2E */	lfsx f6, r3, r0
/* 80277DC0  7C 63 02 14 */	add r3, r3, r0
/* 80277DC4  C0 E3 00 04 */	lfs f7, 4(r3)
/* 80277DC8  EC 6A 01 F2 */	fmuls f3, f10, f7
/* 80277DCC  D0 61 00 08 */	stfs f3, 8(r1)
/* 80277DD0  FC 60 50 50 */	fneg f3, f10
/* 80277DD4  EC 63 01 B2 */	fmuls f3, f3, f6
/* 80277DD8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80277DDC  ED 02 40 2A */	fadds f8, f2, f8
/* 80277DE0  EC 86 02 32 */	fmuls f4, f6, f8
/* 80277DE4  ED 21 48 2A */	fadds f9, f1, f9
/* 80277DE8  EC 67 02 72 */	fmuls f3, f7, f9
/* 80277DEC  EC 64 18 28 */	fsubs f3, f4, f3
/* 80277DF0  EC 6A 00 F2 */	fmuls f3, f10, f3
/* 80277DF4  EC 21 18 2A */	fadds f1, f1, f3
/* 80277DF8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80277DFC  C0 A2 B8 C0 */	lfs f5, lit_2742(r2)
/* 80277E00  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80277E04  EC 2B 01 B2 */	fmuls f1, f11, f6
/* 80277E08  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80277E0C  EC 2B 01 F2 */	fmuls f1, f11, f7
/* 80277E10  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80277E14  FC 80 58 50 */	fneg f4, f11
/* 80277E18  EC 66 02 72 */	fmuls f3, f6, f9
/* 80277E1C  EC 27 02 32 */	fmuls f1, f7, f8
/* 80277E20  EC 23 08 2A */	fadds f1, f3, f1
/* 80277E24  EC 24 00 72 */	fmuls f1, f4, f1
/* 80277E28  EC 22 08 2A */	fadds f1, f2, f1
/* 80277E2C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80277E30  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80277E34  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 80277E38  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 80277E3C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80277E40  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 80277E44  38 61 00 08 */	addi r3, r1, 8
/* 80277E48  38 86 01 B4 */	addi r4, r6, 0x1b4
/* 80277E4C  7C 65 1B 78 */	mr r5, r3
/* 80277E50  48 0C E6 95 */	bl PSMTXConcat
/* 80277E54  38 61 00 08 */	addi r3, r1, 8
/* 80277E58  7F E4 FB 78 */	mr r4, r31
/* 80277E5C  7C 65 1B 78 */	mr r5, r3
/* 80277E60  48 0C E6 85 */	bl PSMTXConcat
/* 80277E64  38 61 00 08 */	addi r3, r1, 8
/* 80277E68  38 80 00 1E */	li r4, 0x1e
/* 80277E6C  38 A0 00 00 */	li r5, 0
/* 80277E70  48 0E 84 B1 */	bl GXLoadTexMtxImm
/* 80277E74  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80277E78  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80277E7C  7C 08 03 A6 */	mtlr r0
/* 80277E80  38 21 00 60 */	addi r1, r1, 0x60
/* 80277E84  4E 80 00 20 */	blr 
