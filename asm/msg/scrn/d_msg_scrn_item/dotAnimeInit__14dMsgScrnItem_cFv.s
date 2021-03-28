lbl_8023FF78:
/* 8023FF78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023FF7C  7C 08 02 A6 */	mflr r0
/* 8023FF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023FF84  80 63 00 EC */	lwz r3, 0xec(r3)
/* 8023FF88  4B FF C0 3D */	bl dotAnimeInit__15dMsgScrnArrow_cFv
/* 8023FF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023FF90  7C 08 03 A6 */	mtlr r0
/* 8023FF94  38 21 00 10 */	addi r1, r1, 0x10
/* 8023FF98  4E 80 00 20 */	blr 
