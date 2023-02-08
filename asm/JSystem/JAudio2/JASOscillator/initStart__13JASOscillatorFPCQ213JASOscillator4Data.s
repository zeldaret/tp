lbl_8029BEC4:
/* 8029BEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029BEC8  90 83 00 00 */	stw r4, 0(r3)
/* 8029BECC  C0 02 BC F8 */	lfs f0, lit_77(r2)
/* 8029BED0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8029BED4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029BED8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8029BEDC  38 00 00 00 */	li r0, 0
/* 8029BEE0  B0 03 00 14 */	sth r0, 0x14(r3)
/* 8029BEE4  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8029BEE8  28 04 00 00 */	cmplwi r4, 0
/* 8029BEEC  40 82 00 0C */	bne lbl_8029BEF8
/* 8029BEF0  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029BEF4  48 00 00 6C */	b lbl_8029BF60
lbl_8029BEF8:
/* 8029BEF8  80 83 00 00 */	lwz r4, 0(r3)
/* 8029BEFC  80 84 00 08 */	lwz r4, 8(r4)
/* 8029BF00  28 04 00 00 */	cmplwi r4, 0
/* 8029BF04  40 82 00 18 */	bne lbl_8029BF1C
/* 8029BF08  38 00 00 02 */	li r0, 2
/* 8029BF0C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029BF10  C0 02 BC FC */	lfs f0, lit_87(r2)
/* 8029BF14  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029BF18  48 00 00 48 */	b lbl_8029BF60
lbl_8029BF1C:
/* 8029BF1C  A8 04 00 04 */	lha r0, 4(r4)
/* 8029BF20  C8 22 BD 08 */	lfd f1, lit_91(r2)
/* 8029BF24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8029BF28  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029BF2C  3C 00 43 30 */	lis r0, 0x4330
/* 8029BF30  90 01 00 08 */	stw r0, 8(r1)
/* 8029BF34  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029BF38  EC 20 08 28 */	fsubs f1, f0, f1
/* 8029BF3C  C0 02 BD 00 */	lfs f0, lit_88(r2)
/* 8029BF40  EC 01 00 24 */	fdivs f0, f1, f0
/* 8029BF44  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8029BF48  80 83 00 00 */	lwz r4, 0(r3)
/* 8029BF4C  80 84 00 08 */	lwz r4, 8(r4)
/* 8029BF50  A8 04 00 00 */	lha r0, 0(r4)
/* 8029BF54  98 03 00 18 */	stb r0, 0x18(r3)
/* 8029BF58  38 00 00 01 */	li r0, 1
/* 8029BF5C  90 03 00 1C */	stw r0, 0x1c(r3)
lbl_8029BF60:
/* 8029BF60  38 21 00 10 */	addi r1, r1, 0x10
/* 8029BF64  4E 80 00 20 */	blr 
