lbl_80B6FA9C:
/* 80B6FA9C  80 C3 09 6C */	lwz r6, 0x96c(r3)
/* 80B6FAA0  28 06 00 00 */	cmplwi r6, 0
/* 80B6FAA4  41 82 00 FC */	beq lbl_80B6FBA0
/* 80B6FAA8  80 03 09 70 */	lwz r0, 0x970(r3)
/* 80B6FAAC  28 00 00 00 */	cmplwi r0, 0
/* 80B6FAB0  41 82 00 F0 */	beq lbl_80B6FBA0
/* 80B6FAB4  88 03 0E 29 */	lbz r0, 0xe29(r3)
/* 80B6FAB8  28 00 00 00 */	cmplwi r0, 0
/* 80B6FABC  41 82 00 AC */	beq lbl_80B6FB68
/* 80B6FAC0  80 03 06 58 */	lwz r0, 0x658(r3)
/* 80B6FAC4  28 00 00 00 */	cmplwi r0, 0
/* 80B6FAC8  41 82 00 A0 */	beq lbl_80B6FB68
/* 80B6FACC  A8 03 0C D6 */	lha r0, 0xcd6(r3)
/* 80B6FAD0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80B6FAD4  7C 00 1E 70 */	srawi r0, r0, 3
/* 80B6FAD8  54 00 18 38 */	slwi r0, r0, 3
/* 80B6FADC  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B6FAE0  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B6FAE4  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B6FAE8  3C 80 80 B7 */	lis r4, lit_4557@ha /* 0x80B71B90@ha */
/* 80B6FAEC  C0 44 1B 90 */	lfs f2, lit_4557@l(r4)  /* 0x80B71B90@l */
/* 80B6FAF0  3C 80 80 B7 */	lis r4, lit_4184@ha /* 0x80B71B84@ha */
/* 80B6FAF4  C0 24 1B 84 */	lfs f1, lit_4184@l(r4)  /* 0x80B71B84@l */
/* 80B6FAF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B6FAFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B6FB00  D0 06 00 FC */	stfs f0, 0xfc(r6)
/* 80B6FB04  A8 03 0C D4 */	lha r0, 0xcd4(r3)
/* 80B6FB08  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B6FB0C  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B6FB10  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B6FB14  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 80B6FB18  D0 04 01 00 */	stfs f0, 0x100(r4)
/* 80B6FB1C  A8 03 0C D6 */	lha r0, 0xcd6(r3)
/* 80B6FB20  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B6FB24  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B6FB28  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B6FB2C  80 83 09 70 */	lwz r4, 0x970(r3)
/* 80B6FB30  D0 04 00 FC */	stfs f0, 0xfc(r4)
/* 80B6FB34  A8 03 0C D4 */	lha r0, 0xcd4(r3)
/* 80B6FB38  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B6FB3C  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B6FB40  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B6FB44  80 83 09 70 */	lwz r4, 0x970(r3)
/* 80B6FB48  D0 04 01 00 */	stfs f0, 0x100(r4)
/* 80B6FB4C  38 00 00 01 */	li r0, 1
/* 80B6FB50  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 80B6FB54  98 04 01 04 */	stb r0, 0x104(r4)
/* 80B6FB58  80 63 09 70 */	lwz r3, 0x970(r3)
/* 80B6FB5C  98 03 01 04 */	stb r0, 0x104(r3)
/* 80B6FB60  38 60 00 01 */	li r3, 1
/* 80B6FB64  4E 80 00 20 */	blr 
lbl_80B6FB68:
/* 80B6FB68  88 03 0E 2A */	lbz r0, 0xe2a(r3)
/* 80B6FB6C  28 00 00 00 */	cmplwi r0, 0
/* 80B6FB70  41 82 00 1C */	beq lbl_80B6FB8C
/* 80B6FB74  98 06 01 05 */	stb r0, 0x105(r6)
/* 80B6FB78  88 03 0E 2A */	lbz r0, 0xe2a(r3)
/* 80B6FB7C  80 83 09 70 */	lwz r4, 0x970(r3)
/* 80B6FB80  98 04 01 05 */	stb r0, 0x105(r4)
/* 80B6FB84  38 00 00 00 */	li r0, 0
/* 80B6FB88  98 03 0E 2A */	stb r0, 0xe2a(r3)
lbl_80B6FB8C:
/* 80B6FB8C  38 00 00 00 */	li r0, 0
/* 80B6FB90  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 80B6FB94  98 04 01 04 */	stb r0, 0x104(r4)
/* 80B6FB98  80 63 09 70 */	lwz r3, 0x970(r3)
/* 80B6FB9C  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80B6FBA0:
/* 80B6FBA0  38 60 00 00 */	li r3, 0
/* 80B6FBA4  4E 80 00 20 */	blr 
