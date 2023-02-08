lbl_80B43674:
/* 80B43674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B43678  7C 08 02 A6 */	mflr r0
/* 80B4367C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B43680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B43684  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B43688  41 82 00 1C */	beq lbl_80B436A4
/* 80B4368C  3C A0 80 B4 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80B462F0@ha */
/* 80B43690  38 05 62 F0 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80B462F0@l */
/* 80B43694  90 1F 00 00 */	stw r0, 0(r31)
/* 80B43698  7C 80 07 35 */	extsh. r0, r4
/* 80B4369C  40 81 00 08 */	ble lbl_80B436A4
/* 80B436A0  4B 78 B6 9D */	bl __dl__FPv
lbl_80B436A4:
/* 80B436A4  7F E3 FB 78 */	mr r3, r31
/* 80B436A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B436AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B436B0  7C 08 03 A6 */	mtlr r0
/* 80B436B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B436B8  4E 80 00 20 */	blr 
