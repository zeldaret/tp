lbl_802F1BE0:
/* 802F1BE0  38 E0 00 00 */	li r7, 0
/* 802F1BE4  38 C0 00 00 */	li r6, 0
/* 802F1BE8  1D 64 00 1C */	mulli r11, r4, 0x1c
/* 802F1BEC  7D 43 5A 14 */	add r10, r3, r11
lbl_802F1BF0:
/* 802F1BF0  38 80 00 00 */	li r4, 0
/* 802F1BF4  7D 05 32 14 */	add r8, r5, r6
/* 802F1BF8  7D 2A 32 14 */	add r9, r10, r6
/* 802F1BFC  38 00 00 03 */	li r0, 3
/* 802F1C00  7C 09 03 A6 */	mtctr r0
lbl_802F1C04:
/* 802F1C04  7C 08 24 2E */	lfsx f0, r8, r4
/* 802F1C08  38 04 00 10 */	addi r0, r4, 0x10
/* 802F1C0C  7C 09 05 2E */	stfsx f0, r9, r0
/* 802F1C10  38 84 00 04 */	addi r4, r4, 4
/* 802F1C14  42 00 FF F0 */	bdnz lbl_802F1C04
/* 802F1C18  38 E7 00 01 */	addi r7, r7, 1
/* 802F1C1C  2C 07 00 02 */	cmpwi r7, 2
/* 802F1C20  38 C6 00 0C */	addi r6, r6, 0xc
/* 802F1C24  41 80 FF CC */	blt lbl_802F1BF0
/* 802F1C28  88 05 00 18 */	lbz r0, 0x18(r5)
/* 802F1C2C  7C 63 5A 14 */	add r3, r3, r11
/* 802F1C30  98 03 00 28 */	stb r0, 0x28(r3)
/* 802F1C34  4E 80 00 20 */	blr 
