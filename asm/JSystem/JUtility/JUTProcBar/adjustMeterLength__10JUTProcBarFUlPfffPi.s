lbl_802E5CC4:
/* 802E5CC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E5CC8  39 00 00 00 */	li r8, 0
/* 802E5CCC  C0 05 00 00 */	lfs f0, 0(r5)
/* 802E5CD0  C1 42 C6 F0 */	lfs f10, lit_2308(r2)
/* 802E5CD4  C9 22 C7 08 */	lfd f9, lit_2315(r2)
/* 802E5CD8  3C E0 43 30 */	lis r7, 0x4330
/* 802E5CDC  C1 02 C6 F4 */	lfs f8, lit_2309(r2)
/* 802E5CE0  C8 C2 C6 E8 */	lfd f6, lit_2281(r2)
/* 802E5CE4  C0 A2 C6 F8 */	lfs f5, lit_2310(r2)
/* 802E5CE8  C0 62 C6 FC */	lfs f3, lit_2311(r2)
/* 802E5CEC  48 00 00 50 */	b lbl_802E5D3C
lbl_802E5CF0:
/* 802E5CF0  90 81 00 0C */	stw r4, 0xc(r1)
/* 802E5CF4  90 E1 00 08 */	stw r7, 8(r1)
/* 802E5CF8  C8 81 00 08 */	lfd f4, 8(r1)
/* 802E5CFC  EC 84 48 28 */	fsubs f4, f4, f9
/* 802E5D00  EC 84 00 32 */	fmuls f4, f4, f0
/* 802E5D04  EC 8A 01 32 */	fmuls f4, f10, f4
/* 802E5D08  EC E4 40 24 */	fdivs f7, f4, f8
/* 802E5D0C  80 03 01 20 */	lwz r0, 0x120(r3)
/* 802E5D10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E5D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5D18  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802E5D1C  C8 81 00 10 */	lfd f4, 0x10(r1)
/* 802E5D20  EC 84 30 28 */	fsubs f4, f4, f6
/* 802E5D24  EC 84 28 28 */	fsubs f4, f4, f5
/* 802E5D28  FC 07 20 40 */	fcmpo cr0, f7, f4
/* 802E5D2C  4C 40 13 82 */	cror 2, 0, 2
/* 802E5D30  41 82 00 14 */	beq lbl_802E5D44
/* 802E5D34  EC 00 18 28 */	fsubs f0, f0, f3
/* 802E5D38  39 00 00 01 */	li r8, 1
lbl_802E5D3C:
/* 802E5D3C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802E5D40  41 81 FF B0 */	bgt lbl_802E5CF0
lbl_802E5D44:
/* 802E5D44  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802E5D48  4C 41 13 82 */	cror 2, 1, 2
/* 802E5D4C  40 82 00 0C */	bne lbl_802E5D58
/* 802E5D50  38 00 00 00 */	li r0, 0
/* 802E5D54  90 06 00 00 */	stw r0, 0(r6)
lbl_802E5D58:
/* 802E5D58  C0 22 C7 00 */	lfs f1, lit_2312(r2)
/* 802E5D5C  EC 22 08 28 */	fsubs f1, f2, f1
/* 802E5D60  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802E5D64  40 81 00 88 */	ble lbl_802E5DEC
/* 802E5D68  FC 00 10 90 */	fmr f0, f2
/* 802E5D6C  48 00 00 80 */	b lbl_802E5DEC
lbl_802E5D70:
/* 802E5D70  80 E6 00 00 */	lwz r7, 0(r6)
/* 802E5D74  38 07 00 01 */	addi r0, r7, 1
/* 802E5D78  90 06 00 00 */	stw r0, 0(r6)
/* 802E5D7C  80 06 00 00 */	lwz r0, 0(r6)
/* 802E5D80  2C 00 00 1E */	cmpwi r0, 0x1e
/* 802E5D84  41 80 00 78 */	blt lbl_802E5DFC
/* 802E5D88  C0 62 C6 F0 */	lfs f3, lit_2308(r2)
/* 802E5D8C  C8 42 C7 08 */	lfd f2, lit_2315(r2)
/* 802E5D90  90 81 00 14 */	stw r4, 0x14(r1)
/* 802E5D94  3C 80 43 30 */	lis r4, 0x4330
/* 802E5D98  90 81 00 10 */	stw r4, 0x10(r1)
/* 802E5D9C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802E5DA0  EC 21 10 28 */	fsubs f1, f1, f2
/* 802E5DA4  EC 21 00 32 */	fmuls f1, f1, f0
/* 802E5DA8  EC 43 00 72 */	fmuls f2, f3, f1
/* 802E5DAC  C0 22 C6 F4 */	lfs f1, lit_2309(r2)
/* 802E5DB0  EC 62 08 24 */	fdivs f3, f2, f1
/* 802E5DB4  80 03 01 20 */	lwz r0, 0x120(r3)
/* 802E5DB8  C8 42 C6 E8 */	lfd f2, lit_2281(r2)
/* 802E5DBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E5DC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E5DC4  90 81 00 08 */	stw r4, 8(r1)
/* 802E5DC8  C8 21 00 08 */	lfd f1, 8(r1)
/* 802E5DCC  EC 41 10 28 */	fsubs f2, f1, f2
/* 802E5DD0  C0 22 C7 04 */	lfs f1, lit_2313(r2)
/* 802E5DD4  EC 22 08 28 */	fsubs f1, f2, f1
/* 802E5DD8  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 802E5DDC  40 80 00 20 */	bge lbl_802E5DFC
/* 802E5DE0  C0 22 C7 00 */	lfs f1, lit_2312(r2)
/* 802E5DE4  EC 00 08 2A */	fadds f0, f0, f1
/* 802E5DE8  48 00 00 14 */	b lbl_802E5DFC
lbl_802E5DEC:
/* 802E5DEC  2C 08 00 00 */	cmpwi r8, 0
/* 802E5DF0  40 82 00 0C */	bne lbl_802E5DFC
/* 802E5DF4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802E5DF8  41 80 FF 78 */	blt lbl_802E5D70
lbl_802E5DFC:
/* 802E5DFC  D0 05 00 00 */	stfs f0, 0(r5)
/* 802E5E00  38 21 00 20 */	addi r1, r1, 0x20
/* 802E5E04  4E 80 00 20 */	blr 
