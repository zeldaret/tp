lbl_80BB02B8:
/* 80BB02B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB02BC  3C 80 80 BB */	lis r4, lit_4714@ha
/* 80BB02C0  C0 24 38 74 */	lfs f1, lit_4714@l(r4)
/* 80BB02C4  A0 03 10 0A */	lhz r0, 0x100a(r3)
/* 80BB02C8  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80BB02CC  28 00 00 0F */	cmplwi r0, 0xf
/* 80BB02D0  41 82 00 38 */	beq lbl_80BB0308
/* 80BB02D4  28 00 00 00 */	cmplwi r0, 0
/* 80BB02D8  41 82 00 30 */	beq lbl_80BB0308
/* 80BB02DC  3C 60 80 BB */	lis r3, lit_4292@ha
/* 80BB02E0  C0 63 38 38 */	lfs f3, lit_4292@l(r3)
/* 80BB02E4  3C 60 80 BB */	lis r3, lit_4716@ha
/* 80BB02E8  C8 43 38 78 */	lfd f2, lit_4716@l(r3)
/* 80BB02EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB02F0  3C 00 43 30 */	lis r0, 0x4330
/* 80BB02F4  90 01 00 08 */	stw r0, 8(r1)
/* 80BB02F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BB02FC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BB0300  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BB0304  EC 21 00 28 */	fsubs f1, f1, f0
lbl_80BB0308:
/* 80BB0308  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB030C  4E 80 00 20 */	blr 
