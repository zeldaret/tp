lbl_8000E47C:
/* 8000E47C  39 02 C9 F0 */	la r8, j3dDefaultColorChanInfo(r2) /* 804563F0-_SDA2_BASE_ */
/* 8000E480  88 A8 00 05 */	lbz r5, 5(r8)
/* 8000E484  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 8000E488  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 8000E48C  7C 00 28 50 */	subf r0, r0, r5
/* 8000E490  30 00 FF FF */	addic r0, r0, -1
/* 8000E494  7C 00 01 10 */	subfe r0, r0, r0
/* 8000E498  7C A9 00 78 */	andc r9, r5, r0
/* 8000E49C  88 E8 00 04 */	lbz r7, 4(r8)
/* 8000E4A0  88 C8 00 03 */	lbz r6, 3(r8)
/* 8000E4A4  88 A8 00 02 */	lbz r5, 2(r8)
/* 8000E4A8  88 88 00 01 */	lbz r4, 1(r8)
/* 8000E4AC  88 02 C9 F0 */	lbz r0, j3dDefaultColorChanInfo(r2)
/* 8000E4B0  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8000E4B4  7C 00 23 78 */	or r0, r0, r4
/* 8000E4B8  54 04 06 B0 */	rlwinm r4, r0, 0, 0x1a, 0x18
/* 8000E4BC  55 20 34 B2 */	rlwinm r0, r9, 6, 0x12, 0x19
/* 8000E4C0  7C 80 03 78 */	or r0, r4, r0
/* 8000E4C4  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8000E4C8  50 A0 17 38 */	rlwimi r0, r5, 2, 0x1c, 0x1c
/* 8000E4CC  50 A0 16 F6 */	rlwimi r0, r5, 2, 0x1b, 0x1b
/* 8000E4D0  50 A0 16 B4 */	rlwimi r0, r5, 2, 0x1a, 0x1a
/* 8000E4D4  50 A0 3D 28 */	rlwimi r0, r5, 7, 0x14, 0x14
/* 8000E4D8  50 A0 3C E6 */	rlwimi r0, r5, 7, 0x13, 0x13
/* 8000E4DC  54 A4 3C A4 */	rlwinm r4, r5, 7, 0x12, 0x12
/* 8000E4E0  50 04 04 FE */	rlwimi r4, r0, 0, 0x13, 0x1f
/* 8000E4E4  54 A0 3C 62 */	rlwinm r0, r5, 7, 0x11, 0x11
/* 8000E4E8  50 80 04 BE */	rlwimi r0, r4, 0, 0x12, 0x1f
/* 8000E4EC  54 04 06 6C */	rlwinm r4, r0, 0, 0x19, 0x16
/* 8000E4F0  30 07 FF FF */	addic r0, r7, -1
/* 8000E4F4  7C 00 01 10 */	subfe r0, r0, r0
/* 8000E4F8  7C C0 00 78 */	andc r0, r6, r0
/* 8000E4FC  54 00 38 30 */	slwi r0, r0, 7
/* 8000E500  7C 80 03 78 */	or r0, r4, r0
/* 8000E504  54 05 05 EA */	rlwinm r5, r0, 0, 0x17, 0x15
/* 8000E508  20 87 00 02 */	subfic r4, r7, 2
/* 8000E50C  30 04 FF FF */	addic r0, r4, -1
/* 8000E510  7C 00 21 10 */	subfe r0, r0, r4
/* 8000E514  54 00 4B EC */	rlwinm r0, r0, 9, 0xf, 0x16
/* 8000E518  7C A0 03 78 */	or r0, r5, r0
/* 8000E51C  54 04 05 A8 */	rlwinm r4, r0, 0, 0x16, 0x14
/* 8000E520  30 07 FF FF */	addic r0, r7, -1
/* 8000E524  7C 00 39 10 */	subfe r0, r0, r7
/* 8000E528  54 00 53 AA */	rlwinm r0, r0, 0xa, 0xe, 0x15
/* 8000E52C  7C 80 03 78 */	or r0, r4, r0
/* 8000E530  B0 03 00 00 */	sth r0, 0(r3)
/* 8000E534  4E 80 00 20 */	blr 
