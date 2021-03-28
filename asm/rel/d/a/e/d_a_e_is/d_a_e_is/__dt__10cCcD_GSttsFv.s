lbl_806F7A7C:
/* 806F7A7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F7A80  7C 08 02 A6 */	mflr r0
/* 806F7A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F7A88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F7A8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F7A90  41 82 00 1C */	beq lbl_806F7AAC
/* 806F7A94  3C A0 80 6F */	lis r5, __vt__10cCcD_GStts@ha
/* 806F7A98  38 05 7D 5C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 806F7A9C  90 1F 00 00 */	stw r0, 0(r31)
/* 806F7AA0  7C 80 07 35 */	extsh. r0, r4
/* 806F7AA4  40 81 00 08 */	ble lbl_806F7AAC
/* 806F7AA8  4B BD 72 94 */	b __dl__FPv
lbl_806F7AAC:
/* 806F7AAC  7F E3 FB 78 */	mr r3, r31
/* 806F7AB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F7AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F7AB8  7C 08 03 A6 */	mtlr r0
/* 806F7ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 806F7AC0  4E 80 00 20 */	blr 
