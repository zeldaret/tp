lbl_80333BB8:
/* 80333BB8  81 04 00 04 */	lwz r8, 4(r4)
/* 80333BBC  80 E4 00 08 */	lwz r7, 8(r4)
/* 80333BC0  54 A0 08 3C */	slwi r0, r5, 1
/* 80333BC4  7C 07 02 2E */	lhzx r0, r7, r0
/* 80333BC8  1C 00 01 38 */	mulli r0, r0, 0x138
/* 80333BCC  7C A8 02 14 */	add r5, r8, r0
/* 80333BD0  54 C0 08 3C */	slwi r0, r6, 1
/* 80333BD4  7C A5 02 14 */	add r5, r5, r0
/* 80333BD8  A0 05 00 A8 */	lhz r0, 0xa8(r5)
/* 80333BDC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80333BE0  41 82 00 18 */	beq lbl_80333BF8
/* 80333BE4  80 84 00 34 */	lwz r4, 0x34(r4)
/* 80333BE8  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80333BEC  7C 04 00 2E */	lwzx r0, r4, r0
/* 80333BF0  90 03 00 00 */	stw r0, 0(r3)
/* 80333BF4  4E 80 00 20 */	blr 
lbl_80333BF8:
/* 80333BF8  80 02 C9 CC */	lwz r0, j3dDefaultTevOrderInfoNull(r2)
/* 80333BFC  90 03 00 00 */	stw r0, 0(r3)
/* 80333C00  4E 80 00 20 */	blr 
