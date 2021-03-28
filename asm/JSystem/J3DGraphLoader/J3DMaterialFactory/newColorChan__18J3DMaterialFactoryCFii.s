lbl_80331DAC:
/* 80331DAC  81 04 00 04 */	lwz r8, 4(r4)
/* 80331DB0  80 E4 00 08 */	lwz r7, 8(r4)
/* 80331DB4  54 A0 08 3C */	slwi r0, r5, 1
/* 80331DB8  7C 07 02 2E */	lhzx r0, r7, r0
/* 80331DBC  1C 00 01 4C */	mulli r0, r0, 0x14c
/* 80331DC0  7C A8 02 14 */	add r5, r8, r0
/* 80331DC4  54 C0 08 3C */	slwi r0, r6, 1
/* 80331DC8  7C A5 02 14 */	add r5, r5, r0
/* 80331DCC  A0 05 00 0C */	lhz r0, 0xc(r5)
/* 80331DD0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80331DD4  41 82 00 C0 */	beq lbl_80331E94
/* 80331DD8  80 84 00 18 */	lwz r4, 0x18(r4)
/* 80331DDC  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 80331DE0  7C 84 02 14 */	add r4, r4, r0
/* 80331DE4  88 A4 00 05 */	lbz r5, 5(r4)
/* 80331DE8  38 05 FF 01 */	addi r0, r5, -255
/* 80331DEC  30 00 FF FF */	addic r0, r0, -1
/* 80331DF0  7C 00 01 10 */	subfe r0, r0, r0
/* 80331DF4  7C A9 00 78 */	andc r9, r5, r0
/* 80331DF8  88 E4 00 04 */	lbz r7, 4(r4)
/* 80331DFC  88 C4 00 03 */	lbz r6, 3(r4)
/* 80331E00  88 A4 00 02 */	lbz r5, 2(r4)
/* 80331E04  88 04 00 00 */	lbz r0, 0(r4)
/* 80331E08  54 08 0B FC */	rlwinm r8, r0, 1, 0xf, 0x1e
/* 80331E0C  88 04 00 01 */	lbz r0, 1(r4)
/* 80331E10  7D 00 03 78 */	or r0, r8, r0
/* 80331E14  54 04 06 B0 */	rlwinm r4, r0, 0, 0x1a, 0x18
/* 80331E18  55 20 34 B2 */	rlwinm r0, r9, 6, 0x12, 0x19
/* 80331E1C  7C 80 03 78 */	or r0, r4, r0
/* 80331E20  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 80331E24  50 A0 17 38 */	rlwimi r0, r5, 2, 0x1c, 0x1c
/* 80331E28  50 A0 16 F6 */	rlwimi r0, r5, 2, 0x1b, 0x1b
/* 80331E2C  50 A0 16 B4 */	rlwimi r0, r5, 2, 0x1a, 0x1a
/* 80331E30  50 A0 3D 28 */	rlwimi r0, r5, 7, 0x14, 0x14
/* 80331E34  50 A0 3C E6 */	rlwimi r0, r5, 7, 0x13, 0x13
/* 80331E38  54 A4 3C A4 */	rlwinm r4, r5, 7, 0x12, 0x12
/* 80331E3C  50 04 04 FE */	rlwimi r4, r0, 0, 0x13, 0x1f
/* 80331E40  54 A0 3C 62 */	rlwinm r0, r5, 7, 0x11, 0x11
/* 80331E44  50 80 04 BE */	rlwimi r0, r4, 0, 0x12, 0x1f
/* 80331E48  54 04 06 6C */	rlwinm r4, r0, 0, 0x19, 0x16
/* 80331E4C  30 07 FF FF */	addic r0, r7, -1
/* 80331E50  7C 00 01 10 */	subfe r0, r0, r0
/* 80331E54  7C C0 00 78 */	andc r0, r6, r0
/* 80331E58  54 00 38 30 */	slwi r0, r0, 7
/* 80331E5C  7C 80 03 78 */	or r0, r4, r0
/* 80331E60  54 05 05 EA */	rlwinm r5, r0, 0, 0x17, 0x15
/* 80331E64  20 87 00 02 */	subfic r4, r7, 2
/* 80331E68  30 04 FF FF */	addic r0, r4, -1
/* 80331E6C  7C 00 21 10 */	subfe r0, r0, r4
/* 80331E70  54 00 4B EC */	rlwinm r0, r0, 9, 0xf, 0x16
/* 80331E74  7C A0 03 78 */	or r0, r5, r0
/* 80331E78  54 04 05 A8 */	rlwinm r4, r0, 0, 0x16, 0x14
/* 80331E7C  30 07 FF FF */	addic r0, r7, -1
/* 80331E80  7C 00 39 10 */	subfe r0, r0, r7
/* 80331E84  54 00 53 AA */	rlwinm r0, r0, 0xa, 0xe, 0x15
/* 80331E88  7C 80 03 78 */	or r0, r4, r0
/* 80331E8C  B0 03 00 00 */	sth r0, 0(r3)
/* 80331E90  4E 80 00 20 */	blr 
lbl_80331E94:
/* 80331E94  39 02 C9 F0 */	la r8, j3dDefaultColorChanInfo(r2) /* 804563F0-_SDA2_BASE_ */
/* 80331E98  88 A8 00 05 */	lbz r5, 5(r8)
/* 80331E9C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 80331EA0  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 80331EA4  7C 00 28 50 */	subf r0, r0, r5
/* 80331EA8  30 00 FF FF */	addic r0, r0, -1
/* 80331EAC  7C 00 01 10 */	subfe r0, r0, r0
/* 80331EB0  7C A9 00 78 */	andc r9, r5, r0
/* 80331EB4  88 E8 00 04 */	lbz r7, 4(r8)
/* 80331EB8  88 C8 00 03 */	lbz r6, 3(r8)
/* 80331EBC  88 A8 00 02 */	lbz r5, 2(r8)
/* 80331EC0  88 88 00 01 */	lbz r4, 1(r8)
/* 80331EC4  88 02 C9 F0 */	lbz r0, j3dDefaultColorChanInfo(r2)
/* 80331EC8  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80331ECC  7C 00 23 78 */	or r0, r0, r4
/* 80331ED0  54 04 06 B0 */	rlwinm r4, r0, 0, 0x1a, 0x18
/* 80331ED4  55 20 34 B2 */	rlwinm r0, r9, 6, 0x12, 0x19
/* 80331ED8  7C 80 03 78 */	or r0, r4, r0
/* 80331EDC  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 80331EE0  50 A0 17 38 */	rlwimi r0, r5, 2, 0x1c, 0x1c
/* 80331EE4  50 A0 16 F6 */	rlwimi r0, r5, 2, 0x1b, 0x1b
/* 80331EE8  50 A0 16 B4 */	rlwimi r0, r5, 2, 0x1a, 0x1a
/* 80331EEC  50 A0 3D 28 */	rlwimi r0, r5, 7, 0x14, 0x14
/* 80331EF0  50 A0 3C E6 */	rlwimi r0, r5, 7, 0x13, 0x13
/* 80331EF4  54 A4 3C A4 */	rlwinm r4, r5, 7, 0x12, 0x12
/* 80331EF8  50 04 04 FE */	rlwimi r4, r0, 0, 0x13, 0x1f
/* 80331EFC  54 A0 3C 62 */	rlwinm r0, r5, 7, 0x11, 0x11
/* 80331F00  50 80 04 BE */	rlwimi r0, r4, 0, 0x12, 0x1f
/* 80331F04  54 04 06 6C */	rlwinm r4, r0, 0, 0x19, 0x16
/* 80331F08  30 07 FF FF */	addic r0, r7, -1
/* 80331F0C  7C 00 01 10 */	subfe r0, r0, r0
/* 80331F10  7C C0 00 78 */	andc r0, r6, r0
/* 80331F14  54 00 38 30 */	slwi r0, r0, 7
/* 80331F18  7C 80 03 78 */	or r0, r4, r0
/* 80331F1C  54 05 05 EA */	rlwinm r5, r0, 0, 0x17, 0x15
/* 80331F20  20 87 00 02 */	subfic r4, r7, 2
/* 80331F24  30 04 FF FF */	addic r0, r4, -1
/* 80331F28  7C 00 21 10 */	subfe r0, r0, r4
/* 80331F2C  54 00 4B EC */	rlwinm r0, r0, 9, 0xf, 0x16
/* 80331F30  7C A0 03 78 */	or r0, r5, r0
/* 80331F34  54 04 05 A8 */	rlwinm r4, r0, 0, 0x16, 0x14
/* 80331F38  30 07 FF FF */	addic r0, r7, -1
/* 80331F3C  7C 00 39 10 */	subfe r0, r0, r7
/* 80331F40  54 00 53 AA */	rlwinm r0, r0, 0xa, 0xe, 0x15
/* 80331F44  7C 80 03 78 */	or r0, r4, r0
/* 80331F48  B0 03 00 00 */	sth r0, 0(r3)
/* 80331F4C  4E 80 00 20 */	blr 
