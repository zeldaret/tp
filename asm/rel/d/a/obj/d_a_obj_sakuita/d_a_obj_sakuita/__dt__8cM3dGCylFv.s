lbl_80CC4F78:
/* 80CC4F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC4F7C  7C 08 02 A6 */	mflr r0
/* 80CC4F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC4F88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC4F8C  41 82 00 1C */	beq lbl_80CC4FA8
/* 80CC4F90  3C A0 80 CC */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CC51A4@ha */
/* 80CC4F94  38 05 51 A4 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CC51A4@l */
/* 80CC4F98  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CC4F9C  7C 80 07 35 */	extsh. r0, r4
/* 80CC4FA0  40 81 00 08 */	ble lbl_80CC4FA8
/* 80CC4FA4  4B 60 9D 99 */	bl __dl__FPv
lbl_80CC4FA8:
/* 80CC4FA8  7F E3 FB 78 */	mr r3, r31
/* 80CC4FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC4FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC4FB4  7C 08 03 A6 */	mtlr r0
/* 80CC4FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4FBC  4E 80 00 20 */	blr 
