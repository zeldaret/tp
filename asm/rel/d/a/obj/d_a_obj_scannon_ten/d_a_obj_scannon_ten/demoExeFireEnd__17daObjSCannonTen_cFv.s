lbl_80CCC37C:
/* 80CCC37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCC380  7C 08 02 A6 */	mflr r0
/* 80CCC384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCC388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCC38C  7C 7F 1B 78 */	mr r31, r3
/* 80CCC390  48 00 03 BD */	bl exeEmtSmoke__17daObjSCannonTen_cFv
/* 80CCC394  38 7F 05 78 */	addi r3, r31, 0x578
/* 80CCC398  3C 80 80 CD */	lis r4, lit_4228@ha
/* 80CCC39C  C0 24 CC 74 */	lfs f1, lit_4228@l(r4)
/* 80CCC3A0  4B 65 C0 8C */	b checkPass__12J3DFrameCtrlFf
/* 80CCC3A4  2C 03 00 00 */	cmpwi r3, 0
/* 80CCC3A8  41 82 00 18 */	beq lbl_80CCC3C0
/* 80CCC3AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCC3B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCC3B4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CCC3B8  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 80CCC3BC  4B 37 BD C0 */	b cutEnd__16dEvent_manager_cFi
lbl_80CCC3C0:
/* 80CCC3C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCC3C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCC3C8  7C 08 03 A6 */	mtlr r0
/* 80CCC3CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCC3D0  4E 80 00 20 */	blr 
