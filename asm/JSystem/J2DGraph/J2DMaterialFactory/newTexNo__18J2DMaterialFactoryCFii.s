lbl_802F3920:
/* 802F3920  80 E3 00 04 */	lwz r7, 4(r3)
/* 802F3924  80 C3 00 08 */	lwz r6, 8(r3)
/* 802F3928  54 80 08 3C */	slwi r0, r4, 1
/* 802F392C  7C 06 02 2E */	lhzx r0, r6, r0
/* 802F3930  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F3934  7C 87 02 14 */	add r4, r7, r0
/* 802F3938  54 A0 08 3C */	slwi r0, r5, 1
/* 802F393C  7C 84 02 14 */	add r4, r4, r0
/* 802F3940  A0 04 00 38 */	lhz r0, 0x38(r4)
/* 802F3944  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F3948  41 82 00 14 */	beq lbl_802F395C
/* 802F394C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 802F3950  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 802F3954  7C 63 02 2E */	lhzx r3, r3, r0
/* 802F3958  4E 80 00 20 */	blr 
lbl_802F395C:
/* 802F395C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802F3960  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802F3964  4E 80 00 20 */	blr 
