lbl_80A0EE28:
/* 80A0EE28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0EE2C  7C 08 02 A6 */	mflr r0
/* 80A0EE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0EE34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0EE38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0EE3C  41 82 00 1C */	beq lbl_80A0EE58
/* 80A0EE40  3C A0 80 A1 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80A0EE44  38 05 45 0C */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80A0EE48  90 1F 00 00 */	stw r0, 0(r31)
/* 80A0EE4C  7C 80 07 35 */	extsh. r0, r4
/* 80A0EE50  40 81 00 08 */	ble lbl_80A0EE58
/* 80A0EE54  4B 8B FE E8 */	b __dl__FPv
lbl_80A0EE58:
/* 80A0EE58  7F E3 FB 78 */	mr r3, r31
/* 80A0EE5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0EE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0EE64  7C 08 03 A6 */	mtlr r0
/* 80A0EE68  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0EE6C  4E 80 00 20 */	blr 
