lbl_8023FF9C:
/* 8023FF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023FFA0  7C 08 02 A6 */	mflr r0
/* 8023FFA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023FFA8  80 63 00 EC */	lwz r3, 0xec(r3)
/* 8023FFAC  4B FF C0 65 */	bl dotAnimeMove__15dMsgScrnArrow_cFv
/* 8023FFB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023FFB4  7C 08 03 A6 */	mtlr r0
/* 8023FFB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8023FFBC  4E 80 00 20 */	blr 
