lbl_80B5CF44:
/* 80B5CF44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5CF48  7C 08 02 A6 */	mflr r0
/* 80B5CF4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5CF50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5CF54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5CF58  41 82 00 1C */	beq lbl_80B5CF74
/* 80B5CF5C  3C A0 80 B6 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80B5CF60  38 05 EB B4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80B5CF64  90 1F 00 00 */	stw r0, 0(r31)
/* 80B5CF68  7C 80 07 35 */	extsh. r0, r4
/* 80B5CF6C  40 81 00 08 */	ble lbl_80B5CF74
/* 80B5CF70  4B 77 1D CC */	b __dl__FPv
lbl_80B5CF74:
/* 80B5CF74  7F E3 FB 78 */	mr r3, r31
/* 80B5CF78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5CF7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5CF80  7C 08 03 A6 */	mtlr r0
/* 80B5CF84  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5CF88  4E 80 00 20 */	blr 
