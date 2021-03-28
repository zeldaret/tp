lbl_80579B28:
/* 80579B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80579B2C  7C 08 02 A6 */	mflr r0
/* 80579B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80579B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80579B38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80579B3C  41 82 00 1C */	beq lbl_80579B58
/* 80579B40  3C A0 80 58 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80579B44  38 05 B8 C0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80579B48  90 1F 00 00 */	stw r0, 0(r31)
/* 80579B4C  7C 80 07 35 */	extsh. r0, r4
/* 80579B50  40 81 00 08 */	ble lbl_80579B58
/* 80579B54  4B D5 51 E8 */	b __dl__FPv
lbl_80579B58:
/* 80579B58  7F E3 FB 78 */	mr r3, r31
/* 80579B5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80579B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80579B64  7C 08 03 A6 */	mtlr r0
/* 80579B68  38 21 00 10 */	addi r1, r1, 0x10
/* 80579B6C  4E 80 00 20 */	blr 
