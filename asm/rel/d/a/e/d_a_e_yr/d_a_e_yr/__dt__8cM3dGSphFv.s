lbl_80827F84:
/* 80827F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80827F88  7C 08 02 A6 */	mflr r0
/* 80827F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80827F90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80827F94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80827F98  41 82 00 1C */	beq lbl_80827FB4
/* 80827F9C  3C A0 80 83 */	lis r5, __vt__8cM3dGSph@ha
/* 80827FA0  38 05 8D 44 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80827FA4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80827FA8  7C 80 07 35 */	extsh. r0, r4
/* 80827FAC  40 81 00 08 */	ble lbl_80827FB4
/* 80827FB0  4B AA 6D 8C */	b __dl__FPv
lbl_80827FB4:
/* 80827FB4  7F E3 FB 78 */	mr r3, r31
/* 80827FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80827FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80827FC0  7C 08 03 A6 */	mtlr r0
/* 80827FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80827FC8  4E 80 00 20 */	blr 
