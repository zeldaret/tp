lbl_80C24F8C:
/* 80C24F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C24F90  7C 08 02 A6 */	mflr r0
/* 80C24F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C24F98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C24F9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C24FA0  41 82 00 1C */	beq lbl_80C24FBC
/* 80C24FA4  3C A0 80 C2 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80C25F4C@ha */
/* 80C24FA8  38 05 5F 4C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80C25F4C@l */
/* 80C24FAC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C24FB0  7C 80 07 35 */	extsh. r0, r4
/* 80C24FB4  40 81 00 08 */	ble lbl_80C24FBC
/* 80C24FB8  4B 6A 9D 85 */	bl __dl__FPv
lbl_80C24FBC:
/* 80C24FBC  7F E3 FB 78 */	mr r3, r31
/* 80C24FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C24FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C24FC8  7C 08 03 A6 */	mtlr r0
/* 80C24FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C24FD0  4E 80 00 20 */	blr 
