lbl_802BE038:
/* 802BE038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE03C  7C 08 02 A6 */	mflr r0
/* 802BE040  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE044  88 03 00 1F */	lbz r0, 0x1f(r3)
/* 802BE048  28 00 00 00 */	cmplwi r0, 0
/* 802BE04C  41 82 00 14 */	beq lbl_802BE060
/* 802BE050  B0 83 00 1C */	sth r4, 0x1c(r3)
/* 802BE054  98 A3 00 1E */	stb r5, 0x1e(r3)
/* 802BE058  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802BE05C  4B FE D4 DD */	bl func_802AB538
lbl_802BE060:
/* 802BE060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE064  7C 08 03 A6 */	mtlr r0
/* 802BE068  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE06C  4E 80 00 20 */	blr 
