lbl_802E5424:
/* 802E5424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5428  7C 08 02 A6 */	mflr r0
/* 802E542C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5430  80 6D 8F D0 */	lwz r3, sManager__6JUTXfb(r13)
/* 802E5434  38 80 00 01 */	li r4, 1
/* 802E5438  4B FF FE D1 */	bl __dt__6JUTXfbFv
/* 802E543C  38 00 00 00 */	li r0, 0
/* 802E5440  90 0D 8F D0 */	stw r0, sManager__6JUTXfb(r13)
/* 802E5444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5448  7C 08 03 A6 */	mtlr r0
/* 802E544C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5450  4E 80 00 20 */	blr 
