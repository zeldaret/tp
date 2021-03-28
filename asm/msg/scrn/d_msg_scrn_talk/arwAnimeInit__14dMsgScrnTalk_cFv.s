lbl_802480F0:
/* 802480F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802480F4  7C 08 02 A6 */	mflr r0
/* 802480F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802480FC  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 80248100  4B FF 3D 35 */	bl arwAnimeInit__15dMsgScrnArrow_cFv
/* 80248104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80248108  7C 08 03 A6 */	mtlr r0
/* 8024810C  38 21 00 10 */	addi r1, r1, 0x10
/* 80248110  4E 80 00 20 */	blr 
