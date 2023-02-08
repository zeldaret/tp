lbl_802A68F4:
/* 802A68F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A68F8  7C 08 02 A6 */	mflr r0
/* 802A68FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6904  7C 7F 1B 78 */	mr r31, r3
/* 802A6908  7F E4 FB 78 */	mr r4, r31
/* 802A690C  48 03 54 F1 */	bl __ct__10JSUPtrLinkFPv
/* 802A6910  7F E3 FB 78 */	mr r3, r31
/* 802A6914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A6918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A691C  7C 08 03 A6 */	mtlr r0
/* 802A6920  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6924  4E 80 00 20 */	blr 
