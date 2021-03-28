lbl_802F3BEC:
/* 802F3BEC  81 04 00 04 */	lwz r8, 4(r4)
/* 802F3BF0  80 E4 00 08 */	lwz r7, 8(r4)
/* 802F3BF4  54 A0 08 3C */	slwi r0, r5, 1
/* 802F3BF8  7C 07 02 2E */	lhzx r0, r7, r0
/* 802F3BFC  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F3C00  7C A8 02 14 */	add r5, r8, r0
/* 802F3C04  54 C0 08 3C */	slwi r0, r6, 1
/* 802F3C08  7C A5 02 14 */	add r5, r5, r0
/* 802F3C0C  A0 05 00 DA */	lhz r0, 0xda(r5)
/* 802F3C10  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F3C14  41 82 00 40 */	beq lbl_802F3C54
/* 802F3C18  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 802F3C1C  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 802F3C20  7C E4 02 14 */	add r7, r4, r0
/* 802F3C24  88 87 00 00 */	lbz r4, 0(r7)
/* 802F3C28  88 C7 00 03 */	lbz r6, 3(r7)
/* 802F3C2C  88 07 00 02 */	lbz r0, 2(r7)
/* 802F3C30  54 05 15 BA */	rlwinm r5, r0, 2, 0x16, 0x1d
/* 802F3C34  54 84 30 32 */	slwi r4, r4, 6
/* 802F3C38  88 07 00 01 */	lbz r0, 1(r7)
/* 802F3C3C  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 802F3C40  7C 00 2A 14 */	add r0, r0, r5
/* 802F3C44  7C 00 32 14 */	add r0, r0, r6
/* 802F3C48  7C 04 02 14 */	add r0, r4, r0
/* 802F3C4C  98 03 00 00 */	stb r0, 0(r3)
/* 802F3C50  4E 80 00 20 */	blr 
lbl_802F3C54:
/* 802F3C54  38 82 C7 9C */	la r4, j2dDefaultTevSwapModeTable(r2) /* 8045619C-_SDA2_BASE_ */
/* 802F3C58  88 E4 00 01 */	lbz r7, 1(r4)
/* 802F3C5C  88 C4 00 03 */	lbz r6, 3(r4)
/* 802F3C60  88 04 00 02 */	lbz r0, 2(r4)
/* 802F3C64  54 05 15 BA */	rlwinm r5, r0, 2, 0x16, 0x1d
/* 802F3C68  88 02 C7 9C */	lbz r0, j2dDefaultTevSwapModeTable(r2)
/* 802F3C6C  54 04 34 B2 */	rlwinm r4, r0, 6, 0x12, 0x19
/* 802F3C70  54 E0 20 36 */	slwi r0, r7, 4
/* 802F3C74  7C 00 2A 14 */	add r0, r0, r5
/* 802F3C78  7C 00 32 14 */	add r0, r0, r6
/* 802F3C7C  7C 04 02 14 */	add r0, r4, r0
/* 802F3C80  98 03 00 00 */	stb r0, 0(r3)
/* 802F3C84  4E 80 00 20 */	blr 
