lbl_802F1EA4:
/* 802F1EA4  54 80 18 38 */	slwi r0, r4, 3
/* 802F1EA8  7C 83 02 14 */	add r4, r3, r0
/* 802F1EAC  88 04 00 7E */	lbz r0, 0x7e(r4)
/* 802F1EB0  54 03 07 B6 */	rlwinm r3, r0, 0, 0x1e, 0x1b
/* 802F1EB4  88 05 00 01 */	lbz r0, 1(r5)
/* 802F1EB8  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802F1EBC  7C 60 03 78 */	or r0, r3, r0
/* 802F1EC0  98 04 00 7E */	stb r0, 0x7e(r4)
/* 802F1EC4  88 04 00 7E */	lbz r0, 0x7e(r4)
/* 802F1EC8  54 03 00 3A */	rlwinm r3, r0, 0, 0, 0x1d
/* 802F1ECC  88 05 00 00 */	lbz r0, 0(r5)
/* 802F1ED0  7C 60 03 78 */	or r0, r3, r0
/* 802F1ED4  98 04 00 7E */	stb r0, 0x7e(r4)
/* 802F1ED8  4E 80 00 20 */	blr 
