lbl_8027EEB0:
/* 8027EEB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8027EEB4  7C 08 02 A6 */	mflr r0
/* 8027EEB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027EEBC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8027EEC0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8027EEC4  7C 7E 1B 78 */	mr r30, r3
/* 8027EEC8  7C 9F 23 78 */	mr r31, r4
/* 8027EECC  38 61 00 08 */	addi r3, r1, 8
/* 8027EED0  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 8027EED4  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 8027EED8  C0 7E 00 A0 */	lfs f3, 0xa0(r30)
/* 8027EEDC  48 0C 7A 8D */	bl PSMTXScale
/* 8027EEE0  38 7E 00 68 */	addi r3, r30, 0x68
/* 8027EEE4  38 81 00 08 */	addi r4, r1, 8
/* 8027EEE8  7C 85 23 78 */	mr r5, r4
/* 8027EEEC  48 0C 75 F9 */	bl PSMTXConcat
/* 8027EEF0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 8027EEF4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8027EEF8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8027EEFC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8027EF00  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8027EF04  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8027EF08  38 61 00 08 */	addi r3, r1, 8
/* 8027EF0C  38 9E 00 0C */	addi r4, r30, 0xc
/* 8027EF10  7F E5 FB 78 */	mr r5, r31
/* 8027EF14  48 0C 7E 59 */	bl PSMTXMultVec
/* 8027EF18  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8027EF1C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8027EF20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8027EF24  7C 08 03 A6 */	mtlr r0
/* 8027EF28  38 21 00 40 */	addi r1, r1, 0x40
/* 8027EF2C  4E 80 00 20 */	blr 
