lbl_8029E09C:
/* 8029E09C  54 A0 0D FC */	rlwinm r0, r5, 1, 0x17, 0x1e
/* 8029E0A0  3C A0 80 3A */	lis r5, connect_table@ha
/* 8029E0A4  38 A5 B8 A0 */	addi r5, r5, connect_table@l
/* 8029E0A8  7C A5 02 2E */	lhzx r5, r5, r0
/* 8029E0AC  54 84 1D 78 */	rlwinm r4, r4, 3, 0x15, 0x1c
/* 8029E0B0  38 04 00 10 */	addi r0, r4, 0x10
/* 8029E0B4  7C A3 03 2E */	sthx r5, r3, r0
/* 8029E0B8  4E 80 00 20 */	blr 
