lbl_80014B04:
/* 80014B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014B08  7C 08 02 A6 */	mflr r0
/* 80014B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014B10  80 0D 86 D0 */	lwz r0, mDoExt_font1(r13)
/* 80014B14  28 00 00 00 */	cmplwi r0, 0
/* 80014B18  40 82 00 08 */	bne lbl_80014B20
/* 80014B1C  4B FF FF 89 */	bl mDoExt_initFont1__Fv
lbl_80014B20:
/* 80014B20  80 6D 86 D4 */	lwz r3, mDoExt_font1_getCount(r13)
/* 80014B24  38 03 00 01 */	addi r0, r3, 1
/* 80014B28  90 0D 86 D4 */	stw r0, mDoExt_font1_getCount(r13)
/* 80014B2C  80 6D 86 D0 */	lwz r3, mDoExt_font1(r13)
/* 80014B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80014B34  7C 08 03 A6 */	mtlr r0
/* 80014B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80014B3C  4E 80 00 20 */	blr 
