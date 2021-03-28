lbl_80333D68:
/* 80333D68  81 04 00 04 */	lwz r8, 4(r4)
/* 80333D6C  80 E4 00 08 */	lwz r7, 8(r4)
/* 80333D70  54 A0 08 3C */	slwi r0, r5, 1
/* 80333D74  7C 07 02 2E */	lhzx r0, r7, r0
/* 80333D78  1C 00 01 38 */	mulli r0, r0, 0x138
/* 80333D7C  7C A8 02 14 */	add r5, r8, r0
/* 80333D80  54 C0 08 3C */	slwi r0, r6, 1
/* 80333D84  7C A5 02 14 */	add r5, r5, r0
/* 80333D88  A0 05 01 10 */	lhz r0, 0x110(r5)
/* 80333D8C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80333D90  41 82 00 40 */	beq lbl_80333DD0
/* 80333D94  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 80333D98  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80333D9C  7C E4 02 14 */	add r7, r4, r0
/* 80333DA0  88 87 00 00 */	lbz r4, 0(r7)
/* 80333DA4  88 C7 00 03 */	lbz r6, 3(r7)
/* 80333DA8  88 07 00 02 */	lbz r0, 2(r7)
/* 80333DAC  54 05 15 BA */	rlwinm r5, r0, 2, 0x16, 0x1d
/* 80333DB0  54 84 30 32 */	slwi r4, r4, 6
/* 80333DB4  88 07 00 01 */	lbz r0, 1(r7)
/* 80333DB8  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 80333DBC  7C 00 2A 14 */	add r0, r0, r5
/* 80333DC0  7C 00 32 14 */	add r0, r0, r6
/* 80333DC4  7C 04 02 14 */	add r0, r4, r0
/* 80333DC8  98 03 00 00 */	stb r0, 0(r3)
/* 80333DCC  4E 80 00 20 */	blr 
lbl_80333DD0:
/* 80333DD0  38 82 C9 E8 */	la r4, j3dDefaultTevSwapModeTable(r2) /* 804563E8-_SDA2_BASE_ */
/* 80333DD4  88 E4 00 01 */	lbz r7, 1(r4)
/* 80333DD8  88 C4 00 03 */	lbz r6, 3(r4)
/* 80333DDC  88 04 00 02 */	lbz r0, 2(r4)
/* 80333DE0  54 05 15 BA */	rlwinm r5, r0, 2, 0x16, 0x1d
/* 80333DE4  88 02 C9 E8 */	lbz r0, j3dDefaultTevSwapModeTable(r2)
/* 80333DE8  54 04 34 B2 */	rlwinm r4, r0, 6, 0x12, 0x19
/* 80333DEC  54 E0 20 36 */	slwi r0, r7, 4
/* 80333DF0  7C 00 2A 14 */	add r0, r0, r5
/* 80333DF4  7C 00 32 14 */	add r0, r0, r6
/* 80333DF8  7C 04 02 14 */	add r0, r4, r0
/* 80333DFC  98 03 00 00 */	stb r0, 0(r3)
/* 80333E00  4E 80 00 20 */	blr 
