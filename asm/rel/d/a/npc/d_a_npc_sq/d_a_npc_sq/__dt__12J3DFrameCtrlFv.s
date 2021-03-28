lbl_80AF6F50:
/* 80AF6F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF6F54  7C 08 02 A6 */	mflr r0
/* 80AF6F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF6F5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF6F60  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF6F64  41 82 00 1C */	beq lbl_80AF6F80
/* 80AF6F68  3C A0 80 AF */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80AF6F6C  38 05 75 9C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80AF6F70  90 1F 00 00 */	stw r0, 0(r31)
/* 80AF6F74  7C 80 07 35 */	extsh. r0, r4
/* 80AF6F78  40 81 00 08 */	ble lbl_80AF6F80
/* 80AF6F7C  4B 7D 7D C0 */	b __dl__FPv
lbl_80AF6F80:
/* 80AF6F80  7F E3 FB 78 */	mr r3, r31
/* 80AF6F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF6F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF6F8C  7C 08 03 A6 */	mtlr r0
/* 80AF6F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF6F94  4E 80 00 20 */	blr 
