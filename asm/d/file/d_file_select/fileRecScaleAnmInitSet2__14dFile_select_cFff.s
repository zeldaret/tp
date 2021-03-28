lbl_8018FE64:
/* 8018FE64  39 00 00 00 */	li r8, 0
/* 8018FE68  38 80 00 00 */	li r4, 0
/* 8018FE6C  38 00 00 03 */	li r0, 3
/* 8018FE70  7C 09 03 A6 */	mtctr r0
lbl_8018FE74:
/* 8018FE74  7C E3 22 14 */	add r7, r3, r4
/* 8018FE78  D0 27 00 C8 */	stfs f1, 0xc8(r7)
/* 8018FE7C  D0 47 00 D4 */	stfs f2, 0xd4(r7)
/* 8018FE80  88 03 02 65 */	lbz r0, 0x265(r3)
/* 8018FE84  7C 08 00 00 */	cmpw r8, r0
/* 8018FE88  40 82 00 50 */	bne lbl_8018FED8
/* 8018FE8C  C0 02 9F 48 */	lfs f0, lit_4778(r2)
/* 8018FE90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018FE94  40 81 00 1C */	ble lbl_8018FEB0
/* 8018FE98  54 06 15 BA */	rlwinm r6, r0, 2, 0x16, 0x1d
/* 8018FE9C  3C A0 80 43 */	lis r5, g_fsHIO@ha
/* 8018FEA0  38 05 C9 EC */	addi r0, r5, g_fsHIO@l
/* 8018FEA4  7C A0 32 14 */	add r5, r0, r6
/* 8018FEA8  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 8018FEAC  D0 07 00 C8 */	stfs f0, 0xc8(r7)
lbl_8018FEB0:
/* 8018FEB0  C0 02 9F 48 */	lfs f0, lit_4778(r2)
/* 8018FEB4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8018FEB8  40 81 00 20 */	ble lbl_8018FED8
/* 8018FEBC  88 03 02 65 */	lbz r0, 0x265(r3)
/* 8018FEC0  54 06 10 3A */	slwi r6, r0, 2
/* 8018FEC4  3C A0 80 43 */	lis r5, g_fsHIO@ha
/* 8018FEC8  38 05 C9 EC */	addi r0, r5, g_fsHIO@l
/* 8018FECC  7C A0 32 14 */	add r5, r0, r6
/* 8018FED0  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 8018FED4  D0 07 00 D4 */	stfs f0, 0xd4(r7)
lbl_8018FED8:
/* 8018FED8  38 00 00 00 */	li r0, 0
/* 8018FEDC  80 A7 00 BC */	lwz r5, 0xbc(r7)
/* 8018FEE0  B0 05 00 64 */	sth r0, 0x64(r5)
/* 8018FEE4  39 08 00 01 */	addi r8, r8, 1
/* 8018FEE8  38 84 00 04 */	addi r4, r4, 4
/* 8018FEEC  42 00 FF 88 */	bdnz lbl_8018FE74
/* 8018FEF0  4E 80 00 20 */	blr 
