lbl_80333B70:
/* 80333B70  80 E3 00 04 */	lwz r7, 4(r3)
/* 80333B74  80 C3 00 08 */	lwz r6, 8(r3)
/* 80333B78  54 80 08 3C */	slwi r0, r4, 1
/* 80333B7C  7C 06 02 2E */	lhzx r0, r6, r0
/* 80333B80  1C 00 01 38 */	mulli r0, r0, 0x138
/* 80333B84  7C 87 02 14 */	add r4, r7, r0
/* 80333B88  54 A0 08 3C */	slwi r0, r5, 1
/* 80333B8C  7C 84 02 14 */	add r4, r4, r0
/* 80333B90  A0 04 00 70 */	lhz r0, 0x70(r4)
/* 80333B94  28 00 FF FF */	cmplwi r0, 0xffff
/* 80333B98  41 82 00 14 */	beq lbl_80333BAC
/* 80333B9C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80333BA0  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80333BA4  7C 63 02 2E */	lhzx r3, r3, r0
/* 80333BA8  4E 80 00 20 */	blr 
lbl_80333BAC:
/* 80333BAC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80333BB0  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80333BB4  4E 80 00 20 */	blr 
