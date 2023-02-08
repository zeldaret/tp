lbl_80237D88:
/* 80237D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80237D8C  7C 08 02 A6 */	mflr r0
/* 80237D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80237D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80237D98  7C 9F 23 78 */	mr r31, r4
/* 80237D9C  38 00 00 01 */	li r0, 1
/* 80237DA0  98 03 04 CC */	stb r0, 0x4cc(r3)
/* 80237DA4  4B FF FB AD */	bl onCameraCancelFlag__12dMsgObject_cFv
/* 80237DA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80237DAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80237DB0  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80237DB4  7F E4 FB 78 */	mr r4, r31
/* 80237DB8  4B FF C3 71 */	bl getMessageIDAlways__12dMsgObject_cFUl
/* 80237DBC  38 80 03 E8 */	li r4, 0x3e8
/* 80237DC0  4B DE 80 C5 */	bl fopMsgM_messageSet__FUlUl
/* 80237DC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80237DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80237DCC  7C 08 03 A6 */	mtlr r0
/* 80237DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80237DD4  4E 80 00 20 */	blr 
