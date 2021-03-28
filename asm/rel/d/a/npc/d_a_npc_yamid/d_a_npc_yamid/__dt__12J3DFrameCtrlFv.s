lbl_80B459AC:
/* 80B459AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B459B0  7C 08 02 A6 */	mflr r0
/* 80B459B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B459B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B459BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B459C0  41 82 00 1C */	beq lbl_80B459DC
/* 80B459C4  3C A0 80 B4 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80B459C8  38 05 62 FC */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80B459CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80B459D0  7C 80 07 35 */	extsh. r0, r4
/* 80B459D4  40 81 00 08 */	ble lbl_80B459DC
/* 80B459D8  4B 78 93 64 */	b __dl__FPv
lbl_80B459DC:
/* 80B459DC  7F E3 FB 78 */	mr r3, r31
/* 80B459E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B459E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B459E8  7C 08 03 A6 */	mtlr r0
/* 80B459EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B459F0  4E 80 00 20 */	blr 
