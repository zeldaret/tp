lbl_8023FF54:
/* 8023FF54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023FF58  7C 08 02 A6 */	mflr r0
/* 8023FF5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023FF60  80 63 00 EC */	lwz r3, 0xec(r3)
/* 8023FF64  4B FF BF 2D */	bl arwAnimeMove__15dMsgScrnArrow_cFv
/* 8023FF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023FF6C  7C 08 03 A6 */	mtlr r0
/* 8023FF70  38 21 00 10 */	addi r1, r1, 0x10
/* 8023FF74  4E 80 00 20 */	blr 
