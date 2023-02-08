lbl_80215A94:
/* 80215A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80215A98  A8 83 07 46 */	lha r4, 0x746(r3)
/* 80215A9C  2C 04 00 05 */	cmpwi r4, 5
/* 80215AA0  41 80 00 18 */	blt lbl_80215AB8
/* 80215AA4  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80215AA8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80215AAC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80215AB0  D0 03 06 04 */	stfs f0, 0x604(r3)
/* 80215AB4  48 00 00 5C */	b lbl_80215B10
lbl_80215AB8:
/* 80215AB8  38 04 00 01 */	addi r0, r4, 1
/* 80215ABC  B0 03 07 46 */	sth r0, 0x746(r3)
/* 80215AC0  A8 03 07 46 */	lha r0, 0x746(r3)
/* 80215AC4  2C 00 00 05 */	cmpwi r0, 5
/* 80215AC8  40 81 00 0C */	ble lbl_80215AD4
/* 80215ACC  38 00 00 05 */	li r0, 5
/* 80215AD0  B0 03 07 46 */	sth r0, 0x746(r3)
lbl_80215AD4:
/* 80215AD4  A8 03 07 46 */	lha r0, 0x746(r3)
/* 80215AD8  C8 22 AE A0 */	lfd f1, lit_4925(r2)
/* 80215ADC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80215AE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80215AE4  3C 00 43 30 */	lis r0, 0x4330
/* 80215AE8  90 01 00 08 */	stw r0, 8(r1)
/* 80215AEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80215AF0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80215AF4  C0 02 AE BC */	lfs f0, lit_6210(r2)
/* 80215AF8  EC 21 00 24 */	fdivs f1, f1, f0
/* 80215AFC  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80215B00  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80215B04  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80215B08  EC 01 00 32 */	fmuls f0, f1, f0
/* 80215B0C  D0 03 06 04 */	stfs f0, 0x604(r3)
lbl_80215B10:
/* 80215B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80215B14  4E 80 00 20 */	blr 
