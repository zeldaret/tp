lbl_8024BC3C:
/* 8024BC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024BC40  7C 08 02 A6 */	mflr r0
/* 8024BC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024BC48  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8024BC4C  4B DD 3D D9 */	bl fopMsgM_SearchByID__FUi
/* 8024BC50  88 63 00 FA */	lbz r3, 0xfa(r3)
/* 8024BC54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024BC58  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024BC5C  80 84 5D BC */	lwz r4, 0x5dbc(r4)
/* 8024BC60  88 04 01 A2 */	lbz r0, 0x1a2(r4)
/* 8024BC64  28 00 00 02 */	cmplwi r0, 2
/* 8024BC68  40 82 00 08 */	bne lbl_8024BC70
/* 8024BC6C  38 60 00 02 */	li r3, 2
lbl_8024BC70:
/* 8024BC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024BC74  7C 08 03 A6 */	mtlr r0
/* 8024BC78  38 21 00 10 */	addi r1, r1, 0x10
/* 8024BC7C  4E 80 00 20 */	blr 
