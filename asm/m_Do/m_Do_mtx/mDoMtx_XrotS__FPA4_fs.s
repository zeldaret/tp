lbl_8000C344:
/* 8000C344  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8000C348  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8000C34C  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 8000C350  7C 85 02 14 */	add r4, r5, r0
/* 8000C354  C0 44 00 04 */	lfs f2, 4(r4)
/* 8000C358  7C 65 04 2E */	lfsx f3, r5, r0
/* 8000C35C  C0 02 81 08 */	lfs f0, lit_3676(r2)
/* 8000C360  D0 03 00 00 */	stfs f0, 0(r3)
/* 8000C364  C0 22 81 0C */	lfs f1, lit_3677(r2)
/* 8000C368  D0 23 00 04 */	stfs f1, 4(r3)
/* 8000C36C  D0 23 00 08 */	stfs f1, 8(r3)
/* 8000C370  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8000C374  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8000C378  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8000C37C  FC 00 18 50 */	fneg f0, f3
/* 8000C380  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8000C384  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8000C388  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 8000C38C  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 8000C390  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 8000C394  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 8000C398  4E 80 00 20 */	blr 
