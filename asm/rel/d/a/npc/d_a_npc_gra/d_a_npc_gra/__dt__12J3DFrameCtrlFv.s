lbl_809C9A34:
/* 809C9A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C9A38  7C 08 02 A6 */	mflr r0
/* 809C9A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C9A44  7C 7F 1B 79 */	or. r31, r3, r3
/* 809C9A48  41 82 00 1C */	beq lbl_809C9A64
/* 809C9A4C  3C A0 80 9D */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x809CB248@ha */
/* 809C9A50  38 05 B2 48 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x809CB248@l */
/* 809C9A54  90 1F 00 00 */	stw r0, 0(r31)
/* 809C9A58  7C 80 07 35 */	extsh. r0, r4
/* 809C9A5C  40 81 00 08 */	ble lbl_809C9A64
/* 809C9A60  4B 90 52 DD */	bl __dl__FPv
lbl_809C9A64:
/* 809C9A64  7F E3 FB 78 */	mr r3, r31
/* 809C9A68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C9A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C9A70  7C 08 03 A6 */	mtlr r0
/* 809C9A74  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9A78  4E 80 00 20 */	blr 
