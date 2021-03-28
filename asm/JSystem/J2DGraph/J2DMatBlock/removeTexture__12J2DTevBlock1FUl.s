lbl_802EC0A8:
/* 802EC0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EC0AC  7C 08 02 A6 */	mflr r0
/* 802EC0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EC0B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EC0B8  7C 7F 1B 78 */	mr r31, r3
/* 802EC0BC  28 04 00 01 */	cmplwi r4, 1
/* 802EC0C0  41 80 00 0C */	blt lbl_802EC0CC
/* 802EC0C4  38 60 00 00 */	li r3, 0
/* 802EC0C8  48 00 00 48 */	b lbl_802EC110
lbl_802EC0CC:
/* 802EC0CC  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 802EC0D0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802EC0D4  41 82 00 10 */	beq lbl_802EC0E4
/* 802EC0D8  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802EC0DC  38 80 00 01 */	li r4, 1
/* 802EC0E0  4B FF 21 55 */	bl __dt__10JUTTextureFv
lbl_802EC0E4:
/* 802EC0E4  38 00 00 00 */	li r0, 0
/* 802EC0E8  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802EC0EC  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 802EC0F0  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 802EC0F4  98 1F 00 5C */	stb r0, 0x5c(r31)
/* 802EC0F8  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 802EC0FC  4B FE 2C 41 */	bl __dl__FPv
/* 802EC100  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EC104  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EC108  B0 1F 00 04 */	sth r0, 4(r31)
/* 802EC10C  38 60 00 01 */	li r3, 1
lbl_802EC110:
/* 802EC110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EC114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EC118  7C 08 03 A6 */	mtlr r0
/* 802EC11C  38 21 00 10 */	addi r1, r1, 0x10
/* 802EC120  4E 80 00 20 */	blr 
