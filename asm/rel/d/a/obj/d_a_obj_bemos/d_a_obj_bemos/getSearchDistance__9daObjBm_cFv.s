lbl_80BB0260:
/* 80BB0260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB0264  3C 80 80 BB */	lis r4, lit_4714@ha /* 0x80BB3874@ha */
/* 80BB0268  C0 24 38 74 */	lfs f1, lit_4714@l(r4)  /* 0x80BB3874@l */
/* 80BB026C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BB0270  54 00 27 3E */	srwi r0, r0, 0x1c
/* 80BB0274  28 00 00 0F */	cmplwi r0, 0xf
/* 80BB0278  41 82 00 38 */	beq lbl_80BB02B0
/* 80BB027C  28 00 00 00 */	cmplwi r0, 0
/* 80BB0280  41 82 00 30 */	beq lbl_80BB02B0
/* 80BB0284  3C 60 80 BB */	lis r3, lit_4292@ha /* 0x80BB3838@ha */
/* 80BB0288  C0 63 38 38 */	lfs f3, lit_4292@l(r3)  /* 0x80BB3838@l */
/* 80BB028C  3C 60 80 BB */	lis r3, lit_4716@ha /* 0x80BB3878@ha */
/* 80BB0290  C8 43 38 78 */	lfd f2, lit_4716@l(r3)  /* 0x80BB3878@l */
/* 80BB0294  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB0298  3C 00 43 30 */	lis r0, 0x4330
/* 80BB029C  90 01 00 08 */	stw r0, 8(r1)
/* 80BB02A0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BB02A4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BB02A8  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BB02AC  EC 21 00 28 */	fsubs f1, f1, f0
lbl_80BB02B0:
/* 80BB02B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB02B4  4E 80 00 20 */	blr 
