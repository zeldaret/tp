lbl_8001AA94:
/* 8001AA94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001AA98  7C 08 02 A6 */	mflr r0
/* 8001AA9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001AAA0  38 A3 04 D0 */	addi r5, r3, 0x4d0
/* 8001AAA4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8001AAA8  38 61 00 14 */	addi r3, r1, 0x14
/* 8001AAAC  48 24 C0 89 */	bl __mi__4cXyzCFRC3Vec
/* 8001AAB0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8001AAB4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8001AAB8  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001AABC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8001AAC0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8001AAC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8001AAC8  38 61 00 08 */	addi r3, r1, 8
/* 8001AACC  48 32 C6 6D */	bl PSVECSquareMag
/* 8001AAD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001AAD4  7C 08 03 A6 */	mtlr r0
/* 8001AAD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8001AADC  4E 80 00 20 */	blr 
