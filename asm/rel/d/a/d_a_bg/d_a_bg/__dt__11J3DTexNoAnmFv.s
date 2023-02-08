lbl_80457E20:
/* 80457E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80457E24  7C 08 02 A6 */	mflr r0
/* 80457E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80457E2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80457E30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80457E34  41 82 00 1C */	beq lbl_80457E50
/* 80457E38  3C A0 80 46 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x804595AC@ha */
/* 80457E3C  38 05 95 AC */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x804595AC@l */
/* 80457E40  90 1F 00 00 */	stw r0, 0(r31)
/* 80457E44  7C 80 07 35 */	extsh. r0, r4
/* 80457E48  40 81 00 08 */	ble lbl_80457E50
/* 80457E4C  4B E7 6E F1 */	bl __dl__FPv
lbl_80457E50:
/* 80457E50  7F E3 FB 78 */	mr r3, r31
/* 80457E54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80457E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80457E5C  7C 08 03 A6 */	mtlr r0
/* 80457E60  38 21 00 10 */	addi r1, r1, 0x10
/* 80457E64  4E 80 00 20 */	blr 
