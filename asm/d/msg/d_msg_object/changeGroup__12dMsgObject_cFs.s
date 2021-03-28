lbl_802380C4:
/* 802380C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802380C8  7C 08 02 A6 */	mflr r0
/* 802380CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802380D0  7C 64 1B 78 */	mr r4, r3
/* 802380D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802380D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802380DC  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802380E0  4B FF EC 2D */	bl changeGroupLocal__12dMsgObject_cFs
/* 802380E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802380E8  7C 08 03 A6 */	mtlr r0
/* 802380EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802380F0  4E 80 00 20 */	blr 
