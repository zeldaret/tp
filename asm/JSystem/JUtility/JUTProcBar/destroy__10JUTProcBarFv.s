lbl_802E5A28:
/* 802E5A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5A2C  7C 08 02 A6 */	mflr r0
/* 802E5A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5A34  80 6D 8F D8 */	lwz r3, sManager__10JUTProcBar(r13)
/* 802E5A38  28 03 00 00 */	cmplwi r3, 0
/* 802E5A3C  41 82 00 0C */	beq lbl_802E5A48
/* 802E5A40  38 80 00 01 */	li r4, 1
/* 802E5A44  4B FF FF 59 */	bl __dt__10JUTProcBarFv
lbl_802E5A48:
/* 802E5A48  38 00 00 00 */	li r0, 0
/* 802E5A4C  90 0D 8F D8 */	stw r0, sManager__10JUTProcBar(r13)
/* 802E5A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5A54  7C 08 03 A6 */	mtlr r0
/* 802E5A58  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5A5C  4E 80 00 20 */	blr 
