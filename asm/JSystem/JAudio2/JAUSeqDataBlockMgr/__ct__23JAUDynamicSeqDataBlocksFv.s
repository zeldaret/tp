lbl_802A6A58:
/* 802A6A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A6A5C  7C 08 02 A6 */	mflr r0
/* 802A6A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6A68  7C 7F 1B 78 */	mr r31, r3
/* 802A6A6C  48 03 54 A9 */	bl initiate__10JSUPtrListFv
/* 802A6A70  38 7F 00 0C */	addi r3, r31, 0xc
/* 802A6A74  48 03 54 A1 */	bl initiate__10JSUPtrListFv
/* 802A6A78  38 7F 00 18 */	addi r3, r31, 0x18
/* 802A6A7C  48 03 54 99 */	bl initiate__10JSUPtrListFv
/* 802A6A80  38 00 00 00 */	li r0, 0
/* 802A6A84  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802A6A88  7F E3 FB 78 */	mr r3, r31
/* 802A6A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A6A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A6A94  7C 08 03 A6 */	mtlr r0
/* 802A6A98  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6A9C  4E 80 00 20 */	blr 
