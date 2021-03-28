lbl_80A20E50:
/* 80A20E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20E54  7C 08 02 A6 */	mflr r0
/* 80A20E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20E5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A20E60  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A20E64  41 82 00 1C */	beq lbl_80A20E80
/* 80A20E68  3C A0 80 A2 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80A20E6C  38 05 17 58 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80A20E70  90 1F 00 00 */	stw r0, 0(r31)
/* 80A20E74  7C 80 07 35 */	extsh. r0, r4
/* 80A20E78  40 81 00 08 */	ble lbl_80A20E80
/* 80A20E7C  4B 8A DE C0 */	b __dl__FPv
lbl_80A20E80:
/* 80A20E80  7F E3 FB 78 */	mr r3, r31
/* 80A20E84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A20E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20E8C  7C 08 03 A6 */	mtlr r0
/* 80A20E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80A20E94  4E 80 00 20 */	blr 
