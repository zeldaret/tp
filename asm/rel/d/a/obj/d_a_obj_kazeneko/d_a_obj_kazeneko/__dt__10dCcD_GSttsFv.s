lbl_80C3D330:
/* 80C3D330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3D334  7C 08 02 A6 */	mflr r0
/* 80C3D338  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3D33C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3D340  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C3D344  41 82 00 30 */	beq lbl_80C3D374
/* 80C3D348  3C 60 80 C4 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C3D4F0@ha */
/* 80C3D34C  38 03 D4 F0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C3D4F0@l */
/* 80C3D350  90 1F 00 00 */	stw r0, 0(r31)
/* 80C3D354  41 82 00 10 */	beq lbl_80C3D364
/* 80C3D358  3C 60 80 C4 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C3D4E4@ha */
/* 80C3D35C  38 03 D4 E4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C3D4E4@l */
/* 80C3D360  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C3D364:
/* 80C3D364  7C 80 07 35 */	extsh. r0, r4
/* 80C3D368  40 81 00 0C */	ble lbl_80C3D374
/* 80C3D36C  7F E3 FB 78 */	mr r3, r31
/* 80C3D370  4B 69 19 CD */	bl __dl__FPv
lbl_80C3D374:
/* 80C3D374  7F E3 FB 78 */	mr r3, r31
/* 80C3D378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3D37C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3D380  7C 08 03 A6 */	mtlr r0
/* 80C3D384  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3D388  4E 80 00 20 */	blr 
