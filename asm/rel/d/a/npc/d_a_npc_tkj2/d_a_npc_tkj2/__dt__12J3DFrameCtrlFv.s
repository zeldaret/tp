lbl_80B13E20:
/* 80B13E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B13E24  7C 08 02 A6 */	mflr r0
/* 80B13E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B13E2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B13E30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B13E34  41 82 00 1C */	beq lbl_80B13E50
/* 80B13E38  3C A0 80 B1 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B144A0@ha */
/* 80B13E3C  38 05 44 A0 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B144A0@l */
/* 80B13E40  90 1F 00 00 */	stw r0, 0(r31)
/* 80B13E44  7C 80 07 35 */	extsh. r0, r4
/* 80B13E48  40 81 00 08 */	ble lbl_80B13E50
/* 80B13E4C  4B 7B AE F1 */	bl __dl__FPv
lbl_80B13E50:
/* 80B13E50  7F E3 FB 78 */	mr r3, r31
/* 80B13E54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B13E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B13E5C  7C 08 03 A6 */	mtlr r0
/* 80B13E60  38 21 00 10 */	addi r1, r1, 0x10
/* 80B13E64  4E 80 00 20 */	blr 
