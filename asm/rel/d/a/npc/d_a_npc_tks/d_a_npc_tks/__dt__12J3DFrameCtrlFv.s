lbl_80B1DC54:
/* 80B1DC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1DC58  7C 08 02 A6 */	mflr r0
/* 80B1DC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1DC60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1DC64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1DC68  41 82 00 1C */	beq lbl_80B1DC84
/* 80B1DC6C  3C A0 80 B2 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B1E4AC@ha */
/* 80B1DC70  38 05 E4 AC */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B1E4AC@l */
/* 80B1DC74  90 1F 00 00 */	stw r0, 0(r31)
/* 80B1DC78  7C 80 07 35 */	extsh. r0, r4
/* 80B1DC7C  40 81 00 08 */	ble lbl_80B1DC84
/* 80B1DC80  4B 7B 10 BD */	bl __dl__FPv
lbl_80B1DC84:
/* 80B1DC84  7F E3 FB 78 */	mr r3, r31
/* 80B1DC88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1DC8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1DC90  7C 08 03 A6 */	mtlr r0
/* 80B1DC94  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1DC98  4E 80 00 20 */	blr 
