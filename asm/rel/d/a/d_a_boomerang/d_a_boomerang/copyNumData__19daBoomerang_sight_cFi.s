lbl_8049EDE8:
/* 8049EDE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049EDEC  38 E4 00 01 */	addi r7, r4, 1
/* 8049EDF0  7C A3 22 14 */	add r5, r3, r4
/* 8049EDF4  89 05 00 62 */	lbz r8, 0x62(r5)
/* 8049EDF8  7C C3 3A 14 */	add r6, r3, r7
/* 8049EDFC  88 06 00 62 */	lbz r0, 0x62(r6)
/* 8049EE00  98 05 00 62 */	stb r0, 0x62(r5)
/* 8049EE04  99 06 00 62 */	stb r8, 0x62(r6)
/* 8049EE08  54 80 10 3A */	slwi r0, r4, 2
/* 8049EE0C  7C A3 02 14 */	add r5, r3, r0
/* 8049EE10  C0 25 00 98 */	lfs f1, 0x98(r5)
/* 8049EE14  54 E0 10 3A */	slwi r0, r7, 2
/* 8049EE18  7C C3 02 14 */	add r6, r3, r0
/* 8049EE1C  C0 06 00 98 */	lfs f0, 0x98(r6)
/* 8049EE20  D0 05 00 98 */	stfs f0, 0x98(r5)
/* 8049EE24  D0 26 00 98 */	stfs f1, 0x98(r6)
/* 8049EE28  C0 25 00 B0 */	lfs f1, 0xb0(r5)
/* 8049EE2C  C0 06 00 B0 */	lfs f0, 0xb0(r6)
/* 8049EE30  D0 05 00 B0 */	stfs f0, 0xb0(r5)
/* 8049EE34  D0 26 00 B0 */	stfs f1, 0xb0(r6)
/* 8049EE38  1C 04 00 0C */	mulli r0, r4, 0xc
/* 8049EE3C  7C 83 02 14 */	add r4, r3, r0
/* 8049EE40  C0 64 00 C8 */	lfs f3, 0xc8(r4)
/* 8049EE44  D0 61 00 08 */	stfs f3, 8(r1)
/* 8049EE48  C0 44 00 CC */	lfs f2, 0xcc(r4)
/* 8049EE4C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8049EE50  C0 24 00 D0 */	lfs f1, 0xd0(r4)
/* 8049EE54  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8049EE58  1C 07 00 0C */	mulli r0, r7, 0xc
/* 8049EE5C  7C 63 02 14 */	add r3, r3, r0
/* 8049EE60  C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 8049EE64  D0 04 00 C8 */	stfs f0, 0xc8(r4)
/* 8049EE68  C0 03 00 CC */	lfs f0, 0xcc(r3)
/* 8049EE6C  D0 04 00 CC */	stfs f0, 0xcc(r4)
/* 8049EE70  C0 03 00 D0 */	lfs f0, 0xd0(r3)
/* 8049EE74  D0 04 00 D0 */	stfs f0, 0xd0(r4)
/* 8049EE78  D0 63 00 C8 */	stfs f3, 0xc8(r3)
/* 8049EE7C  D0 43 00 CC */	stfs f2, 0xcc(r3)
/* 8049EE80  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8049EE84  38 21 00 20 */	addi r1, r1, 0x20
/* 8049EE88  4E 80 00 20 */	blr 
