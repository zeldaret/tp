lbl_8066E7D4:
/* 8066E7D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066E7D8  7C 08 02 A6 */	mflr r0
/* 8066E7DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066E7E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8066E7E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8066E7E8  41 82 00 1C */	beq lbl_8066E804
/* 8066E7EC  3C A0 80 67 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8066F258@ha */
/* 8066E7F0  38 05 F2 58 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8066F258@l */
/* 8066E7F4  90 1F 00 00 */	stw r0, 0(r31)
/* 8066E7F8  7C 80 07 35 */	extsh. r0, r4
/* 8066E7FC  40 81 00 08 */	ble lbl_8066E804
/* 8066E800  4B C6 05 3D */	bl __dl__FPv
lbl_8066E804:
/* 8066E804  7F E3 FB 78 */	mr r3, r31
/* 8066E808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8066E80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066E810  7C 08 03 A6 */	mtlr r0
/* 8066E814  38 21 00 10 */	addi r1, r1, 0x10
/* 8066E818  4E 80 00 20 */	blr 
