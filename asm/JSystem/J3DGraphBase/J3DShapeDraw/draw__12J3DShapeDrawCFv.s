lbl_80314AD4:
/* 80314AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80314AD8  7C 08 02 A6 */	mflr r0
/* 80314ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80314AE0  7C 64 1B 78 */	mr r4, r3
/* 80314AE4  80 63 00 08 */	lwz r3, 8(r3)
/* 80314AE8  80 84 00 04 */	lwz r4, 4(r4)
/* 80314AEC  48 04 B4 05 */	bl GXCallDisplayList
/* 80314AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80314AF4  7C 08 03 A6 */	mtlr r0
/* 80314AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80314AFC  4E 80 00 20 */	blr 
