lbl_80541A1C:
/* 80541A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80541A20  7C 08 02 A6 */	mflr r0
/* 80541A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80541A28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80541A2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80541A30  41 82 00 1C */	beq lbl_80541A4C
/* 80541A34  3C A0 80 54 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80541F80@ha */
/* 80541A38  38 05 1F 80 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80541F80@l */
/* 80541A3C  90 1F 00 00 */	stw r0, 0(r31)
/* 80541A40  7C 80 07 35 */	extsh. r0, r4
/* 80541A44  40 81 00 08 */	ble lbl_80541A4C
/* 80541A48  4B D8 D2 F5 */	bl __dl__FPv
lbl_80541A4C:
/* 80541A4C  7F E3 FB 78 */	mr r3, r31
/* 80541A50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80541A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80541A58  7C 08 03 A6 */	mtlr r0
/* 80541A5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80541A60  4E 80 00 20 */	blr 
