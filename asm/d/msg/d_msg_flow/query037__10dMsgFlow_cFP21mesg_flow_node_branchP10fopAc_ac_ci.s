lbl_8024BC80:
/* 8024BC80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024BC84  7C 08 02 A6 */	mflr r0
/* 8024BC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024BC8C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8024BC90  4B DD 3D 95 */	bl fopMsgM_SearchByID__FUi
/* 8024BC94  88 63 00 FA */	lbz r3, 0xfa(r3)
/* 8024BC98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024BC9C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024BCA0  80 84 5D BC */	lwz r4, 0x5dbc(r4)
/* 8024BCA4  88 04 01 A2 */	lbz r0, 0x1a2(r4)
/* 8024BCA8  28 00 00 02 */	cmplwi r0, 2
/* 8024BCAC  40 82 00 08 */	bne lbl_8024BCB4
/* 8024BCB0  38 60 00 03 */	li r3, 3
lbl_8024BCB4:
/* 8024BCB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024BCB8  7C 08 03 A6 */	mtlr r0
/* 8024BCBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8024BCC0  4E 80 00 20 */	blr 
