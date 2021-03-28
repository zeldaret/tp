lbl_802A4A5C:
/* 802A4A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4A60  7C 08 02 A6 */	mflr r0
/* 802A4A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4A68  38 80 00 00 */	li r4, 0
/* 802A4A6C  4B FE B6 D5 */	bl __ct__7JASHeapFP11JASDisposer
/* 802A4A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4A74  7C 08 03 A6 */	mtlr r0
/* 802A4A78  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4A7C  4E 80 00 20 */	blr 
