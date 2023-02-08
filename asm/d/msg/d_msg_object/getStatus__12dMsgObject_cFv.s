lbl_8023822C:
/* 8023822C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238230  7C 08 02 A6 */	mflr r0
/* 80238234  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238238  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8023823C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80238240  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238244  4B FF E6 B5 */	bl getStatusLocal__12dMsgObject_cFv
/* 80238248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023824C  7C 08 03 A6 */	mtlr r0
/* 80238250  38 21 00 10 */	addi r1, r1, 0x10
/* 80238254  4E 80 00 20 */	blr 
