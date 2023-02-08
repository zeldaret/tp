lbl_80B5F670:
/* 80B5F670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5F674  7C 08 02 A6 */	mflr r0
/* 80B5F678  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5F67C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5F680  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5F684  41 82 00 1C */	beq lbl_80B5F6A0
/* 80B5F688  3C A0 80 B7 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80B68BE8@ha */
/* 80B5F68C  38 05 8B E8 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80B68BE8@l */
/* 80B5F690  90 1F 00 00 */	stw r0, 0(r31)
/* 80B5F694  7C 80 07 35 */	extsh. r0, r4
/* 80B5F698  40 81 00 08 */	ble lbl_80B5F6A0
/* 80B5F69C  4B 76 F6 A1 */	bl __dl__FPv
lbl_80B5F6A0:
/* 80B5F6A0  7F E3 FB 78 */	mr r3, r31
/* 80B5F6A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5F6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5F6AC  7C 08 03 A6 */	mtlr r0
/* 80B5F6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5F6B4  4E 80 00 20 */	blr 
