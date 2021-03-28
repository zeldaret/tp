lbl_802E5144:
/* 802E5144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5148  7C 08 02 A6 */	mflr r0
/* 802E514C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5150  80 8D 8F B8 */	lwz r4, sManager__8JUTVideo(r13)
/* 802E5154  28 04 00 00 */	cmplwi r4, 0
/* 802E5158  41 82 00 30 */	beq lbl_802E5188
/* 802E515C  81 84 00 28 */	lwz r12, 0x28(r4)
/* 802E5160  28 0C 00 00 */	cmplwi r12, 0
/* 802E5164  41 82 00 0C */	beq lbl_802E5170
/* 802E5168  7D 89 03 A6 */	mtctr r12
/* 802E516C  4E 80 04 21 */	bctrl 
lbl_802E5170:
/* 802E5170  48 06 87 4D */	bl VIGetRetraceCount
/* 802E5174  7C 64 1B 78 */	mr r4, r3
/* 802E5178  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 802E517C  38 63 00 38 */	addi r3, r3, 0x38
/* 802E5180  38 A0 00 00 */	li r5, 0
/* 802E5184  48 05 98 71 */	bl OSSendMessage
lbl_802E5188:
/* 802E5188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E518C  7C 08 03 A6 */	mtlr r0
/* 802E5190  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5194  4E 80 00 20 */	blr 
