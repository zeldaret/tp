lbl_802CE0D0:
/* 802CE0D0  A8 C4 00 00 */	lha r6, 0(r4)
/* 802CE0D4  A8 04 00 06 */	lha r0, 6(r4)
/* 802CE0D8  54 05 62 66 */	rlwinm r5, r0, 0xc, 9, 0x13
/* 802CE0DC  50 C5 05 7E */	rlwimi r5, r6, 0, 0x15, 0x1f
/* 802CE0E0  54 66 08 3C */	slwi r6, r3, 1
/* 802CE0E4  38 06 00 E0 */	addi r0, r6, 0xe0
/* 802CE0E8  7C A7 2B 78 */	mr r7, r5
/* 802CE0EC  50 07 C0 0E */	rlwimi r7, r0, 0x18, 0, 7
/* 802CE0F0  A8 A4 00 04 */	lha r5, 4(r4)
/* 802CE0F4  A8 04 00 02 */	lha r0, 2(r4)
/* 802CE0F8  54 03 62 66 */	rlwinm r3, r0, 0xc, 9, 0x13
/* 802CE0FC  50 A3 05 7E */	rlwimi r3, r5, 0, 0x15, 0x1f
/* 802CE100  38 06 00 E1 */	addi r0, r6, 0xe1
/* 802CE104  7C 64 1B 78 */	mr r4, r3
/* 802CE108  50 04 C0 0E */	rlwimi r4, r0, 0x18, 0, 7
/* 802CE10C  38 00 00 61 */	li r0, 0x61
/* 802CE110  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 802CE114  98 03 80 00 */	stb r0, 0x8000(r3)
/* 802CE118  90 E3 80 00 */	stw r7, -0x8000(r3)
/* 802CE11C  98 03 80 00 */	stb r0, -0x8000(r3)
/* 802CE120  90 83 80 00 */	stw r4, -0x8000(r3)
/* 802CE124  98 03 80 00 */	stb r0, -0x8000(r3)
/* 802CE128  90 83 80 00 */	stw r4, -0x8000(r3)
/* 802CE12C  98 03 80 00 */	stb r0, -0x8000(r3)
/* 802CE130  90 83 80 00 */	stw r4, -0x8000(r3)
/* 802CE134  4E 80 00 20 */	blr 
