lbl_80BE3BD4:
/* 80BE3BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE3BD8  3C 80 80 BE */	lis r4, lit_3677@ha
/* 80BE3BDC  38 84 4A B0 */	addi r4, r4, lit_3677@l
/* 80BE3BE0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BE3BE4  54 00 66 3E */	rlwinm r0, r0, 0xc, 0x18, 0x1f
/* 80BE3BE8  28 00 00 FF */	cmplwi r0, 0xff
/* 80BE3BEC  40 82 00 0C */	bne lbl_80BE3BF8
/* 80BE3BF0  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80BE3BF4  48 00 00 2C */	b lbl_80BE3C20
lbl_80BE3BF8:
/* 80BE3BF8  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 80BE3BFC  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 80BE3C00  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 80BE3C04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BE3C08  3C 00 43 30 */	lis r0, 0x4330
/* 80BE3C0C  90 01 00 08 */	stw r0, 8(r1)
/* 80BE3C10  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BE3C14  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BE3C18  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BE3C1C  EC 23 00 2A */	fadds f1, f3, f0
lbl_80BE3C20:
/* 80BE3C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3C24  4E 80 00 20 */	blr 
