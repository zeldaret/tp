lbl_80C3C50C:
/* 80C3C50C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3C510  7C 08 02 A6 */	mflr r0
/* 80C3C514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3C518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3C51C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C3C520  41 82 00 1C */	beq lbl_80C3C53C
/* 80C3C524  3C A0 80 C4 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C3C7CC@ha */
/* 80C3C528  38 05 C7 CC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C3C7CC@l */
/* 80C3C52C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C3C530  7C 80 07 35 */	extsh. r0, r4
/* 80C3C534  40 81 00 08 */	ble lbl_80C3C53C
/* 80C3C538  4B 69 28 05 */	bl __dl__FPv
lbl_80C3C53C:
/* 80C3C53C  7F E3 FB 78 */	mr r3, r31
/* 80C3C540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3C544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3C548  7C 08 03 A6 */	mtlr r0
/* 80C3C54C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3C550  4E 80 00 20 */	blr 
