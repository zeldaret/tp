lbl_802CE0A4:
/* 802CE0A4  38 00 00 61 */	li r0, 0x61
/* 802CE0A8  3C C0 CC 01 */	lis r6, 0xCC01 /* 0xCC008000@ha */
/* 802CE0AC  98 06 80 00 */	stb r0, 0x8000(r6)
/* 802CE0B0  54 A5 25 36 */	rlwinm r5, r5, 4, 0x14, 0x1b
/* 802CE0B4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 802CE0B8  54 80 08 3C */	slwi r0, r4, 1
/* 802CE0BC  7C 60 03 78 */	or r0, r3, r0
/* 802CE0C0  7C A0 03 78 */	or r0, r5, r0
/* 802CE0C4  64 00 40 00 */	oris r0, r0, 0x4000
/* 802CE0C8  90 06 80 00 */	stw r0, -0x8000(r6)
/* 802CE0CC  4E 80 00 20 */	blr 
