lbl_802A90B8:
/* 802A90B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A90BC  7C 08 02 A6 */	mflr r0
/* 802A90C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A90C4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802A90C8  40 82 00 14 */	bne lbl_802A90DC
/* 802A90CC  98 83 00 00 */	stb r4, 0(r3)
/* 802A90D0  38 00 00 00 */	li r0, 0
/* 802A90D4  90 03 00 04 */	stw r0, 4(r3)
/* 802A90D8  48 00 00 08 */	b lbl_802A90E0
lbl_802A90DC:
/* 802A90DC  48 00 00 15 */	bl setEncoding___Q28JMessage18TResourceContainerFUc
lbl_802A90E0:
/* 802A90E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A90E4  7C 08 03 A6 */	mtlr r0
/* 802A90E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A90EC  4E 80 00 20 */	blr 
