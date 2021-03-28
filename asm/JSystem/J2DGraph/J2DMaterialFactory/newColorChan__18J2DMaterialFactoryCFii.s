lbl_802F3704:
/* 802F3704  81 04 00 04 */	lwz r8, 4(r4)
/* 802F3708  80 E4 00 08 */	lwz r7, 8(r4)
/* 802F370C  54 A0 08 3C */	slwi r0, r5, 1
/* 802F3710  7C 07 02 2E */	lhzx r0, r7, r0
/* 802F3714  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F3718  7C A8 02 14 */	add r5, r8, r0
/* 802F371C  54 C0 08 3C */	slwi r0, r6, 1
/* 802F3720  7C A5 02 14 */	add r5, r5, r0
/* 802F3724  A0 05 00 0C */	lhz r0, 0xc(r5)
/* 802F3728  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F372C  41 82 00 1C */	beq lbl_802F3748
/* 802F3730  80 A4 00 18 */	lwz r5, 0x18(r4)
/* 802F3734  54 04 13 BA */	rlwinm r4, r0, 2, 0xe, 0x1d
/* 802F3738  38 04 00 01 */	addi r0, r4, 1
/* 802F373C  7C 05 00 AE */	lbzx r0, r5, r0
/* 802F3740  B0 03 00 00 */	sth r0, 0(r3)
/* 802F3744  4E 80 00 20 */	blr 
lbl_802F3748:
/* 802F3748  38 82 C7 A8 */	la r4, j2dDefaultColorChanInfo(r2) /* 804561A8-_SDA2_BASE_ */
/* 802F374C  88 04 00 01 */	lbz r0, 1(r4)
/* 802F3750  B0 03 00 00 */	sth r0, 0(r3)
/* 802F3754  4E 80 00 20 */	blr 
