lbl_80510D2C:
/* 80510D2C  3C 80 80 52 */	lis r4, lit_4208@ha
/* 80510D30  38 A4 85 84 */	addi r5, r4, lit_4208@l
/* 80510D34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80510D38  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80510D3C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80510D40  38 00 00 00 */	li r0, 0
/* 80510D44  98 03 09 AD */	stb r0, 0x9ad(r3)
/* 80510D48  38 00 00 0A */	li r0, 0xa
/* 80510D4C  B0 03 09 98 */	sth r0, 0x998(r3)
/* 80510D50  88 03 0A FB */	lbz r0, 0xafb(r3)
/* 80510D54  7C 00 07 75 */	extsb. r0, r0
/* 80510D58  40 82 00 20 */	bne lbl_80510D78
/* 80510D5C  38 00 00 07 */	li r0, 7
/* 80510D60  B0 03 09 72 */	sth r0, 0x972(r3)
/* 80510D64  38 00 00 01 */	li r0, 1
/* 80510D68  B0 03 05 B4 */	sth r0, 0x5b4(r3)
/* 80510D6C  C0 05 00 04 */	lfs f0, 4(r5)
/* 80510D70  D0 03 09 80 */	stfs f0, 0x980(r3)
/* 80510D74  4E 80 00 20 */	blr 
lbl_80510D78:
/* 80510D78  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 80510D7C  2C 00 00 00 */	cmpwi r0, 0
/* 80510D80  4C 82 00 20 */	bnelr 
/* 80510D84  88 03 05 B7 */	lbz r0, 0x5b7(r3)
/* 80510D88  28 00 00 0E */	cmplwi r0, 0xe
/* 80510D8C  4C 82 00 20 */	bnelr 
/* 80510D90  A8 03 12 A4 */	lha r0, 0x12a4(r3)
/* 80510D94  2C 00 00 00 */	cmpwi r0, 0
/* 80510D98  4C 82 00 20 */	bnelr 
/* 80510D9C  C0 24 04 D0 */	lfs f1, 0x4d0(r4)
/* 80510DA0  C0 05 01 58 */	lfs f0, 0x158(r5)
/* 80510DA4  EC 41 00 28 */	fsubs f2, f1, f0
/* 80510DA8  C0 24 04 D8 */	lfs f1, 0x4d8(r4)
/* 80510DAC  C0 05 01 5C */	lfs f0, 0x15c(r5)
/* 80510DB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80510DB4  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80510DB8  EC 00 00 32 */	fmuls f0, f0, f0
/* 80510DBC  EC 21 00 2A */	fadds f1, f1, f0
/* 80510DC0  C0 05 00 04 */	lfs f0, 4(r5)
/* 80510DC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80510DC8  40 81 00 0C */	ble lbl_80510DD4
/* 80510DCC  FC 00 08 34 */	frsqrte f0, f1
/* 80510DD0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80510DD4:
/* 80510DD4  C0 05 01 20 */	lfs f0, 0x120(r5)
/* 80510DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80510DDC  4C 80 00 20 */	bgelr 
/* 80510DE0  38 00 00 14 */	li r0, 0x14
/* 80510DE4  B0 03 12 A4 */	sth r0, 0x12a4(r3)
/* 80510DE8  4E 80 00 20 */	blr 
