lbl_801A8C04:
/* 801A8C04  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801A8C08  A8 03 00 00 */	lha r0, 0(r3)
/* 801A8C0C  54 00 10 3A */	slwi r0, r0, 2
/* 801A8C10  7C 05 07 34 */	extsh r5, r0
/* 801A8C14  A8 03 00 02 */	lha r0, 2(r3)
/* 801A8C18  54 00 10 3A */	slwi r0, r0, 2
/* 801A8C1C  7C 06 07 34 */	extsh r6, r0
/* 801A8C20  A8 03 00 04 */	lha r0, 4(r3)
/* 801A8C24  54 00 10 3A */	slwi r0, r0, 2
/* 801A8C28  7C 07 07 34 */	extsh r7, r0
/* 801A8C2C  2C 05 00 FF */	cmpwi r5, 0xff
/* 801A8C30  40 81 00 90 */	ble lbl_801A8CC0
/* 801A8C34  C0 42 A2 6C */	lfs f2, lit_4732(r2)
/* 801A8C38  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801A8C3C  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 801A8C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A8C44  3C 60 43 30 */	lis r3, 0x4330
/* 801A8C48  90 61 00 10 */	stw r3, 0x10(r1)
/* 801A8C4C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801A8C50  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A8C54  EC 42 00 24 */	fdivs f2, f2, f0
/* 801A8C58  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A8C5C  90 61 00 18 */	stw r3, 0x18(r1)
/* 801A8C60  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801A8C64  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A8C68  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A8C6C  FC 00 00 1E */	fctiwz f0, f0
/* 801A8C70  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A8C74  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 801A8C78  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 801A8C7C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A8C80  90 61 00 28 */	stw r3, 0x28(r1)
/* 801A8C84  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A8C88  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A8C8C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A8C90  FC 00 00 1E */	fctiwz f0, f0
/* 801A8C94  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A8C98  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 801A8C9C  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 801A8CA0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801A8CA4  90 61 00 38 */	stw r3, 0x38(r1)
/* 801A8CA8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801A8CAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A8CB0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A8CB4  FC 00 00 1E */	fctiwz f0, f0
/* 801A8CB8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 801A8CBC  80 E1 00 44 */	lwz r7, 0x44(r1)
lbl_801A8CC0:
/* 801A8CC0  7C C0 07 34 */	extsh r0, r6
/* 801A8CC4  2C 00 00 FF */	cmpwi r0, 0xff
/* 801A8CC8  40 81 00 98 */	ble lbl_801A8D60
/* 801A8CCC  C0 42 A2 6C */	lfs f2, lit_4732(r2)
/* 801A8CD0  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801A8CD4  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 801A8CD8  90 81 00 44 */	stw r4, 0x44(r1)
/* 801A8CDC  3C 60 43 30 */	lis r3, 0x4330
/* 801A8CE0  90 61 00 40 */	stw r3, 0x40(r1)
/* 801A8CE4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801A8CE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A8CEC  EC 42 00 24 */	fdivs f2, f2, f0
/* 801A8CF0  7C A0 07 34 */	extsh r0, r5
/* 801A8CF4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A8CF8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801A8CFC  90 61 00 38 */	stw r3, 0x38(r1)
/* 801A8D00  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801A8D04  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A8D08  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A8D0C  FC 00 00 1E */	fctiwz f0, f0
/* 801A8D10  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A8D14  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 801A8D18  90 81 00 2C */	stw r4, 0x2c(r1)
/* 801A8D1C  90 61 00 28 */	stw r3, 0x28(r1)
/* 801A8D20  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A8D24  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A8D28  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A8D2C  FC 00 00 1E */	fctiwz f0, f0
/* 801A8D30  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A8D34  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 801A8D38  7C E0 07 34 */	extsh r0, r7
/* 801A8D3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A8D40  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A8D44  90 61 00 18 */	stw r3, 0x18(r1)
/* 801A8D48  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801A8D4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A8D50  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A8D54  FC 00 00 1E */	fctiwz f0, f0
/* 801A8D58  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801A8D5C  80 E1 00 14 */	lwz r7, 0x14(r1)
lbl_801A8D60:
/* 801A8D60  7C E0 07 34 */	extsh r0, r7
/* 801A8D64  2C 00 00 FF */	cmpwi r0, 0xff
/* 801A8D68  40 81 00 98 */	ble lbl_801A8E00
/* 801A8D6C  C0 42 A2 6C */	lfs f2, lit_4732(r2)
/* 801A8D70  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801A8D74  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 801A8D78  90 81 00 44 */	stw r4, 0x44(r1)
/* 801A8D7C  3C 60 43 30 */	lis r3, 0x4330
/* 801A8D80  90 61 00 40 */	stw r3, 0x40(r1)
/* 801A8D84  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801A8D88  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A8D8C  EC 42 00 24 */	fdivs f2, f2, f0
/* 801A8D90  7C A0 07 34 */	extsh r0, r5
/* 801A8D94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A8D98  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801A8D9C  90 61 00 38 */	stw r3, 0x38(r1)
/* 801A8DA0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801A8DA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A8DA8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A8DAC  FC 00 00 1E */	fctiwz f0, f0
/* 801A8DB0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A8DB4  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 801A8DB8  7C C0 07 34 */	extsh r0, r6
/* 801A8DBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A8DC0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A8DC4  90 61 00 28 */	stw r3, 0x28(r1)
/* 801A8DC8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A8DCC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A8DD0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A8DD4  FC 00 00 1E */	fctiwz f0, f0
/* 801A8DD8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A8DDC  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 801A8DE0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 801A8DE4  90 61 00 18 */	stw r3, 0x18(r1)
/* 801A8DE8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801A8DEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A8DF0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A8DF4  FC 00 00 1E */	fctiwz f0, f0
/* 801A8DF8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801A8DFC  80 E1 00 14 */	lwz r7, 0x14(r1)
lbl_801A8E00:
/* 801A8E00  98 A1 00 08 */	stb r5, 8(r1)
/* 801A8E04  98 C1 00 09 */	stb r6, 9(r1)
/* 801A8E08  98 E1 00 0A */	stb r7, 0xa(r1)
/* 801A8E0C  38 00 00 FF */	li r0, 0xff
/* 801A8E10  98 01 00 0B */	stb r0, 0xb(r1)
/* 801A8E14  80 61 00 08 */	lwz r3, 8(r1)
/* 801A8E18  38 21 00 50 */	addi r1, r1, 0x50
/* 801A8E1C  4E 80 00 20 */	blr 
