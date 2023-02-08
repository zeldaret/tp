lbl_802F3968:
/* 802F3968  80 C3 00 04 */	lwz r6, 4(r3)
/* 802F396C  80 A3 00 08 */	lwz r5, 8(r3)
/* 802F3970  54 80 08 3C */	slwi r0, r4, 1
/* 802F3974  7C 05 02 2E */	lhzx r0, r5, r0
/* 802F3978  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F397C  7C 86 02 14 */	add r4, r6, r0
/* 802F3980  A0 04 00 48 */	lhz r0, 0x48(r4)
/* 802F3984  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F3988  41 82 00 14 */	beq lbl_802F399C
/* 802F398C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 802F3990  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 802F3994  7C 63 02 2E */	lhzx r3, r3, r0
/* 802F3998  4E 80 00 20 */	blr 
lbl_802F399C:
/* 802F399C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802F39A0  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802F39A4  4E 80 00 20 */	blr 
