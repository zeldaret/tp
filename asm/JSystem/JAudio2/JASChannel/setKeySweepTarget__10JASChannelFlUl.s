lbl_8029ACD4:
/* 8029ACD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029ACD8  28 05 00 00 */	cmplwi r5, 0
/* 8029ACDC  40 82 00 28 */	bne lbl_8029AD04
/* 8029ACE0  C8 22 BC 98 */	lfd f1, lit_685(r2)
/* 8029ACE4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8029ACE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029ACEC  3C 00 43 30 */	lis r0, 0x4330
/* 8029ACF0  90 01 00 08 */	stw r0, 8(r1)
/* 8029ACF4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029ACF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8029ACFC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8029AD00  48 00 00 2C */	b lbl_8029AD2C
lbl_8029AD04:
/* 8029AD04  C0 02 BC 84 */	lfs f0, lit_545(r2)
/* 8029AD08  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8029AD0C  C8 22 BC 98 */	lfd f1, lit_685(r2)
/* 8029AD10  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8029AD14  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029AD18  3C 00 43 30 */	lis r0, 0x4330
/* 8029AD1C  90 01 00 08 */	stw r0, 8(r1)
/* 8029AD20  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029AD24  EC 00 08 28 */	fsubs f0, f0, f1
/* 8029AD28  D0 03 00 D0 */	stfs f0, 0xd0(r3)
lbl_8029AD2C:
/* 8029AD2C  90 A3 00 D4 */	stw r5, 0xd4(r3)
/* 8029AD30  38 21 00 10 */	addi r1, r1, 0x10
/* 8029AD34  4E 80 00 20 */	blr 
