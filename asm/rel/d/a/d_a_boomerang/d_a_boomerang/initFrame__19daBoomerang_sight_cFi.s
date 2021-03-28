lbl_8049EDA8:
/* 8049EDA8  38 00 00 00 */	li r0, 0
/* 8049EDAC  7C A3 22 14 */	add r5, r3, r4
/* 8049EDB0  98 05 00 62 */	stb r0, 0x62(r5)
/* 8049EDB4  3C A0 80 4A */	lis r5, lit_4495@ha
/* 8049EDB8  C0 05 28 C8 */	lfs f0, lit_4495@l(r5)
/* 8049EDBC  54 80 10 3A */	slwi r0, r4, 2
/* 8049EDC0  7C C3 02 14 */	add r6, r3, r0
/* 8049EDC4  D0 06 00 98 */	stfs f0, 0x98(r6)
/* 8049EDC8  3C A0 80 4A */	lis r5, lit_4432@ha
/* 8049EDCC  C0 05 28 A4 */	lfs f0, lit_4432@l(r5)
/* 8049EDD0  D0 06 00 B0 */	stfs f0, 0xb0(r6)
/* 8049EDD4  2C 04 00 00 */	cmpwi r4, 0
/* 8049EDD8  4C 82 00 20 */	bnelr 
/* 8049EDDC  38 00 00 01 */	li r0, 1
/* 8049EDE0  98 03 00 60 */	stb r0, 0x60(r3)
/* 8049EDE4  4E 80 00 20 */	blr 
