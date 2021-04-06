lbl_8048BE4C:
/* 8048BE4C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048BE50  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 8048BE54  B0 03 05 E0 */	sth r0, 0x5e0(r3)
/* 8048BE58  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048BE5C  54 00 A5 3E */	rlwinm r0, r0, 0x14, 0x14, 0x1f
/* 8048BE60  B0 03 05 E2 */	sth r0, 0x5e2(r3)
/* 8048BE64  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048BE68  54 04 01 0E */	rlwinm r4, r0, 0, 4, 7
/* 8048BE6C  3C 04 F1 00 */	addis r0, r4, 0xf100
/* 8048BE70  28 00 00 00 */	cmplwi r0, 0
/* 8048BE74  41 82 00 10 */	beq lbl_8048BE84
/* 8048BE78  54 80 46 3E */	srwi r0, r4, 0x18
/* 8048BE7C  90 03 05 D8 */	stw r0, 0x5d8(r3)
/* 8048BE80  48 00 00 0C */	b lbl_8048BE8C
lbl_8048BE84:
/* 8048BE84  38 00 FF FF */	li r0, -1
/* 8048BE88  90 03 05 D8 */	stw r0, 0x5d8(r3)
lbl_8048BE8C:
/* 8048BE8C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048BE90  54 00 17 BE */	srwi r0, r0, 0x1e
/* 8048BE94  98 03 05 E4 */	stb r0, 0x5e4(r3)
/* 8048BE98  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 8048BE9C  98 03 05 DD */	stb r0, 0x5dd(r3)
/* 8048BEA0  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 8048BEA4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8048BEA8  98 03 05 DE */	stb r0, 0x5de(r3)
/* 8048BEAC  A8 03 04 B8 */	lha r0, 0x4b8(r3)
/* 8048BEB0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8048BEB4  90 03 05 D4 */	stw r0, 0x5d4(r3)
/* 8048BEB8  A8 03 04 B8 */	lha r0, 0x4b8(r3)
/* 8048BEBC  54 04 04 2E */	rlwinm r4, r0, 0, 0x10, 0x17
/* 8048BEC0  3C 04 00 00 */	addis r0, r4, 0
/* 8048BEC4  28 00 FF 00 */	cmplwi r0, 0xff00
/* 8048BEC8  41 82 00 14 */	beq lbl_8048BEDC
/* 8048BECC  7C 80 46 70 */	srawi r0, r4, 8
/* 8048BED0  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 8048BED4  90 03 05 D0 */	stw r0, 0x5d0(r3)
/* 8048BED8  48 00 00 0C */	b lbl_8048BEE4
lbl_8048BEDC:
/* 8048BEDC  38 00 00 00 */	li r0, 0
/* 8048BEE0  90 03 05 D0 */	stw r0, 0x5d0(r3)
lbl_8048BEE4:
/* 8048BEE4  38 00 FF FF */	li r0, -1
/* 8048BEE8  90 03 05 74 */	stw r0, 0x574(r3)
/* 8048BEEC  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 8048BEF0  3C 80 80 49 */	lis r4, lit_3784@ha /* 0x8048C398@ha */
/* 8048BEF4  C0 24 C3 98 */	lfs f1, lit_3784@l(r4)  /* 0x8048C398@l */
/* 8048BEF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048BEFC  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 8048BF00  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 8048BF04  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048BF08  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 8048BF0C  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 8048BF10  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048BF14  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
/* 8048BF18  88 03 05 E4 */	lbz r0, 0x5e4(r3)
/* 8048BF1C  2C 00 00 01 */	cmpwi r0, 1
/* 8048BF20  40 82 00 30 */	bne lbl_8048BF50
/* 8048BF24  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 8048BF28  3C 80 80 49 */	lis r4, lit_3815@ha /* 0x8048C3B8@ha */
/* 8048BF2C  C0 24 C3 B8 */	lfs f1, lit_3815@l(r4)  /* 0x8048C3B8@l */
/* 8048BF30  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048BF34  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 8048BF38  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 8048BF3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048BF40  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 8048BF44  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 8048BF48  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048BF4C  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
lbl_8048BF50:
/* 8048BF50  38 00 00 00 */	li r0, 0
/* 8048BF54  B0 03 04 B4 */	sth r0, 0x4b4(r3)
/* 8048BF58  B0 03 04 B8 */	sth r0, 0x4b8(r3)
/* 8048BF5C  38 60 00 01 */	li r3, 1
/* 8048BF60  4E 80 00 20 */	blr 
