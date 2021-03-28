lbl_8023FF30:
/* 8023FF30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023FF34  7C 08 02 A6 */	mflr r0
/* 8023FF38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023FF3C  80 63 00 EC */	lwz r3, 0xec(r3)
/* 8023FF40  4B FF BE F5 */	bl arwAnimeInit__15dMsgScrnArrow_cFv
/* 8023FF44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023FF48  7C 08 03 A6 */	mtlr r0
/* 8023FF4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8023FF50  4E 80 00 20 */	blr 
