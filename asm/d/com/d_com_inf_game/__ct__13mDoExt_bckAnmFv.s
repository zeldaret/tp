lbl_80030A2C:
/* 80030A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030A30  7C 08 02 A6 */	mflr r0
/* 80030A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030A38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030A3C  7C 7F 1B 78 */	mr r31, r3
/* 80030A40  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80030A44  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80030A48  90 03 00 00 */	stw r0, 0(r3)
/* 80030A4C  38 80 00 00 */	li r4, 0
/* 80030A50  48 2F 79 AD */	bl init__12J3DFrameCtrlFs
/* 80030A54  38 00 00 00 */	li r0, 0
/* 80030A58  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80030A5C  7F E3 FB 78 */	mr r3, r31
/* 80030A60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80030A64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030A68  7C 08 03 A6 */	mtlr r0
/* 80030A6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80030A70  4E 80 00 20 */	blr 
