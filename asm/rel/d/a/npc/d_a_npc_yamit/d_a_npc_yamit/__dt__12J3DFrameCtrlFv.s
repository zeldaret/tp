lbl_80B4C770:
/* 80B4C770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4C774  7C 08 02 A6 */	mflr r0
/* 80B4C778  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4C77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4C780  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4C784  41 82 00 1C */	beq lbl_80B4C7A0
/* 80B4C788  3C A0 80 B5 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B4D080@ha */
/* 80B4C78C  38 05 D0 80 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B4D080@l */
/* 80B4C790  90 1F 00 00 */	stw r0, 0(r31)
/* 80B4C794  7C 80 07 35 */	extsh. r0, r4
/* 80B4C798  40 81 00 08 */	ble lbl_80B4C7A0
/* 80B4C79C  4B 78 25 A1 */	bl __dl__FPv
lbl_80B4C7A0:
/* 80B4C7A0  7F E3 FB 78 */	mr r3, r31
/* 80B4C7A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4C7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4C7AC  7C 08 03 A6 */	mtlr r0
/* 80B4C7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4C7B4  4E 80 00 20 */	blr 
