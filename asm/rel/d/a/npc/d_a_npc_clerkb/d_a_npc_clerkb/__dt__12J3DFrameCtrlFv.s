lbl_80998B2C:
/* 80998B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80998B30  7C 08 02 A6 */	mflr r0
/* 80998B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80998B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80998B3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80998B40  41 82 00 1C */	beq lbl_80998B5C
/* 80998B44  3C A0 80 9A */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80999F3C@ha */
/* 80998B48  38 05 9F 3C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80999F3C@l */
/* 80998B4C  90 1F 00 00 */	stw r0, 0(r31)
/* 80998B50  7C 80 07 35 */	extsh. r0, r4
/* 80998B54  40 81 00 08 */	ble lbl_80998B5C
/* 80998B58  4B 93 61 E5 */	bl __dl__FPv
lbl_80998B5C:
/* 80998B5C  7F E3 FB 78 */	mr r3, r31
/* 80998B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80998B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80998B68  7C 08 03 A6 */	mtlr r0
/* 80998B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80998B70  4E 80 00 20 */	blr 
