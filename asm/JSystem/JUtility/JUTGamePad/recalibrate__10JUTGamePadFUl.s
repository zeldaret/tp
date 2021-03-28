lbl_802E1A98:
/* 802E1A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1A9C  7C 08 02 A6 */	mflr r0
/* 802E1AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1AA4  38 80 00 00 */	li r4, 0
/* 802E1AA8  80 ED 8F 58 */	lwz r7, sSuppressPadReset__10JUTGamePad(r13)
/* 802E1AAC  3C A0 80 3D */	lis r5, channel_mask@ha
/* 802E1AB0  38 C5 C6 00 */	addi r6, r5, channel_mask@l
/* 802E1AB4  38 A0 FF FF */	li r5, -1
/* 802E1AB8  38 00 00 04 */	li r0, 4
/* 802E1ABC  7C 09 03 A6 */	mtctr r0
lbl_802E1AC0:
/* 802E1AC0  7D 06 20 2E */	lwzx r8, r6, r4
/* 802E1AC4  7C E0 40 39 */	and. r0, r7, r8
/* 802E1AC8  41 82 00 0C */	beq lbl_802E1AD4
/* 802E1ACC  7D 00 2A 78 */	xor r0, r8, r5
/* 802E1AD0  7C 63 00 38 */	and r3, r3, r0
lbl_802E1AD4:
/* 802E1AD4  38 84 00 04 */	addi r4, r4, 4
/* 802E1AD8  42 00 FF E8 */	bdnz lbl_802E1AC0
/* 802E1ADC  48 06 D1 61 */	bl PADRecalibrate
/* 802E1AE0  30 03 FF FF */	addic r0, r3, -1
/* 802E1AE4  7C 00 19 10 */	subfe r0, r0, r3
/* 802E1AE8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 802E1AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1AF0  7C 08 03 A6 */	mtlr r0
/* 802E1AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1AF8  4E 80 00 20 */	blr 
