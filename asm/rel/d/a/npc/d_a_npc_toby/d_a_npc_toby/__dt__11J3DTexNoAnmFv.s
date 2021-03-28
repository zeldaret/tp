lbl_80B1EE14:
/* 80B1EE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1EE18  7C 08 02 A6 */	mflr r0
/* 80B1EE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1EE20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1EE24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1EE28  41 82 00 1C */	beq lbl_80B1EE44
/* 80B1EE2C  3C A0 80 B2 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80B1EE30  38 05 56 C0 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80B1EE34  90 1F 00 00 */	stw r0, 0(r31)
/* 80B1EE38  7C 80 07 35 */	extsh. r0, r4
/* 80B1EE3C  40 81 00 08 */	ble lbl_80B1EE44
/* 80B1EE40  4B 7A FE FC */	b __dl__FPv
lbl_80B1EE44:
/* 80B1EE44  7F E3 FB 78 */	mr r3, r31
/* 80B1EE48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1EE4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1EE50  7C 08 03 A6 */	mtlr r0
/* 80B1EE54  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1EE58  4E 80 00 20 */	blr 
