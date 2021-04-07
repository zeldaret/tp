lbl_80D35F98:
/* 80D35F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D35F9C  7C 08 02 A6 */	mflr r0
/* 80D35FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D35FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D35FA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D35FAC  41 82 00 1C */	beq lbl_80D35FC8
/* 80D35FB0  3C A0 80 D3 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80D361C0@ha */
/* 80D35FB4  38 05 61 C0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80D361C0@l */
/* 80D35FB8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D35FBC  7C 80 07 35 */	extsh. r0, r4
/* 80D35FC0  40 81 00 08 */	ble lbl_80D35FC8
/* 80D35FC4  4B 59 8D 79 */	bl __dl__FPv
lbl_80D35FC8:
/* 80D35FC8  7F E3 FB 78 */	mr r3, r31
/* 80D35FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D35FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D35FD4  7C 08 03 A6 */	mtlr r0
/* 80D35FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D35FDC  4E 80 00 20 */	blr 
