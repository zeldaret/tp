lbl_802DED24:
/* 802DED24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DED28  7C 08 02 A6 */	mflr r0
/* 802DED2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DED30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DED34  7C 7F 1B 78 */	mr r31, r3
/* 802DED38  38 00 FF FF */	li r0, -1
/* 802DED3C  90 01 00 08 */	stw r0, 8(r1)
/* 802DED40  90 01 00 0C */	stw r0, 0xc(r1)
/* 802DED44  38 81 00 0C */	addi r4, r1, 0xc
/* 802DED48  48 00 00 29 */	bl setCharColor__7JUTFontFQ28JUtility6TColor
/* 802DED4C  38 00 00 00 */	li r0, 0
/* 802DED50  98 1F 00 05 */	stb r0, 5(r31)
/* 802DED54  90 1F 00 08 */	stw r0, 8(r31)
/* 802DED58  98 1F 00 04 */	stb r0, 4(r31)
/* 802DED5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DED60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DED64  7C 08 03 A6 */	mtlr r0
/* 802DED68  38 21 00 20 */	addi r1, r1, 0x20
/* 802DED6C  4E 80 00 20 */	blr 
