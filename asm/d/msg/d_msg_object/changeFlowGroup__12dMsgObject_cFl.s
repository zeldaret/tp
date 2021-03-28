lbl_8023803C:
/* 8023803C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238040  7C 08 02 A6 */	mflr r0
/* 80238044  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238048  7C 64 1B 78 */	mr r4, r3
/* 8023804C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80238050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80238054  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238058  4B FF EC 39 */	bl changeFlowGroupLocal__12dMsgObject_cFl
/* 8023805C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238060  7C 08 03 A6 */	mtlr r0
/* 80238064  38 21 00 10 */	addi r1, r1, 0x10
/* 80238068  4E 80 00 20 */	blr 
