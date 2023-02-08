lbl_80CE87E4:
/* 80CE87E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE87E8  7C 08 02 A6 */	mflr r0
/* 80CE87EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE87F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE87F4  7C 7F 1B 78 */	mr r31, r3
/* 80CE87F8  3C 80 80 CF */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80CE8F68@ha */
/* 80CE87FC  38 04 8F 68 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80CE8F68@l */
/* 80CE8800  90 03 00 00 */	stw r0, 0(r3)
/* 80CE8804  38 80 00 00 */	li r4, 0
/* 80CE8808  4B 63 FB F5 */	bl init__12J3DFrameCtrlFs
/* 80CE880C  38 00 00 00 */	li r0, 0
/* 80CE8810  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CE8814  7F E3 FB 78 */	mr r3, r31
/* 80CE8818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE881C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE8820  7C 08 03 A6 */	mtlr r0
/* 80CE8824  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE8828  4E 80 00 20 */	blr 
