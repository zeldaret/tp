lbl_80C85CAC:
/* 80C85CAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C85CB0  3C 80 80 C8 */	lis r4, lit_3650@ha /* 0x80C86130@ha */
/* 80C85CB4  38 A4 61 30 */	addi r5, r4, lit_3650@l /* 0x80C86130@l */
/* 80C85CB8  88 03 05 B0 */	lbz r0, 0x5b0(r3)
/* 80C85CBC  28 00 00 00 */	cmplwi r0, 0
/* 80C85CC0  40 82 00 58 */	bne lbl_80C85D18
/* 80C85CC4  C0 65 00 1C */	lfs f3, 0x1c(r5)
/* 80C85CC8  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 80C85CCC  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 80C85CD0  3C 80 80 C8 */	lis r4, l_HIO@ha /* 0x80C862CC@ha */
/* 80C85CD4  38 84 62 CC */	addi r4, r4, l_HIO@l /* 0x80C862CC@l */
/* 80C85CD8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80C85CDC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C85CE0  EC 02 00 24 */	fdivs f0, f2, f0
/* 80C85CE4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C85CE8  FC 00 00 1E */	fctiwz f0, f0
/* 80C85CEC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C85CF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C85CF4  7C 00 07 34 */	extsh r0, r0
/* 80C85CF8  C8 25 00 28 */	lfd f1, 0x28(r5)
/* 80C85CFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C85D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C85D04  3C 00 43 30 */	lis r0, 0x4330
/* 80C85D08  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C85D0C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C85D10  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C85D14  D0 03 05 2C */	stfs f0, 0x52c(r3)
lbl_80C85D18:
/* 80C85D18  88 03 05 B1 */	lbz r0, 0x5b1(r3)
/* 80C85D1C  28 00 00 00 */	cmplwi r0, 0
/* 80C85D20  40 82 00 2C */	bne lbl_80C85D4C
/* 80C85D24  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80C85D28  2C 00 00 00 */	cmpwi r0, 0
/* 80C85D2C  41 81 00 14 */	bgt lbl_80C85D40
/* 80C85D30  A8 83 04 B6 */	lha r4, 0x4b6(r3)
/* 80C85D34  38 04 80 00 */	addi r0, r4, -32768
/* 80C85D38  B0 03 05 B6 */	sth r0, 0x5b6(r3)
/* 80C85D3C  48 00 00 34 */	b lbl_80C85D70
lbl_80C85D40:
/* 80C85D40  A8 03 04 B6 */	lha r0, 0x4b6(r3)
/* 80C85D44  B0 03 05 B6 */	sth r0, 0x5b6(r3)
/* 80C85D48  48 00 00 28 */	b lbl_80C85D70
lbl_80C85D4C:
/* 80C85D4C  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80C85D50  2C 00 00 00 */	cmpwi r0, 0
/* 80C85D54  41 80 00 14 */	blt lbl_80C85D68
/* 80C85D58  A8 83 04 B6 */	lha r4, 0x4b6(r3)
/* 80C85D5C  38 04 7F FF */	addi r0, r4, 0x7fff
/* 80C85D60  B0 03 05 B6 */	sth r0, 0x5b6(r3)
/* 80C85D64  48 00 00 0C */	b lbl_80C85D70
lbl_80C85D68:
/* 80C85D68  A8 03 04 B6 */	lha r0, 0x4b6(r3)
/* 80C85D6C  B0 03 05 B6 */	sth r0, 0x5b6(r3)
lbl_80C85D70:
/* 80C85D70  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80C85D74  C8 45 00 28 */	lfd f2, 0x28(r5)
/* 80C85D78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C85D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C85D80  3C 80 43 30 */	lis r4, 0x4330
/* 80C85D84  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C85D88  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C85D8C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80C85D90  A8 03 05 B6 */	lha r0, 0x5b6(r3)
/* 80C85D94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C85D98  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C85D9C  90 81 00 08 */	stw r4, 8(r1)
/* 80C85DA0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C85DA4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C85DA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C85DAC  FC 00 02 10 */	fabs f0, f0
/* 80C85DB0  FC 00 00 18 */	frsp f0, f0
/* 80C85DB4  D0 03 05 BC */	stfs f0, 0x5bc(r3)
/* 80C85DB8  C0 03 05 C4 */	lfs f0, 0x5c4(r3)
/* 80C85DBC  D0 03 05 C0 */	stfs f0, 0x5c0(r3)
/* 80C85DC0  38 00 00 04 */	li r0, 4
/* 80C85DC4  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80C85DC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C85DCC  4E 80 00 20 */	blr 
