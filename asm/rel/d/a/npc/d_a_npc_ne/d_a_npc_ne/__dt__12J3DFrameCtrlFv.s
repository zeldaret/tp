lbl_80A91B40:
/* 80A91B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A91B44  7C 08 02 A6 */	mflr r0
/* 80A91B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A91B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A91B50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A91B54  41 82 00 1C */	beq lbl_80A91B70
/* 80A91B58  3C A0 80 A9 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80A92A5C@ha */
/* 80A91B5C  38 05 2A 5C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80A92A5C@l */
/* 80A91B60  90 1F 00 00 */	stw r0, 0(r31)
/* 80A91B64  7C 80 07 35 */	extsh. r0, r4
/* 80A91B68  40 81 00 08 */	ble lbl_80A91B70
/* 80A91B6C  4B 83 D1 D1 */	bl __dl__FPv
lbl_80A91B70:
/* 80A91B70  7F E3 FB 78 */	mr r3, r31
/* 80A91B74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A91B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A91B7C  7C 08 03 A6 */	mtlr r0
/* 80A91B80  38 21 00 10 */	addi r1, r1, 0x10
/* 80A91B84  4E 80 00 20 */	blr 
