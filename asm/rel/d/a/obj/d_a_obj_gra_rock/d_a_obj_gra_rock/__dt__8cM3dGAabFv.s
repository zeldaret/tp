lbl_80C11EF0:
/* 80C11EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C11EF4  7C 08 02 A6 */	mflr r0
/* 80C11EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C11EFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C11F00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C11F04  41 82 00 1C */	beq lbl_80C11F20
/* 80C11F08  3C A0 80 C1 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C1250C@ha */
/* 80C11F0C  38 05 25 0C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C1250C@l */
/* 80C11F10  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C11F14  7C 80 07 35 */	extsh. r0, r4
/* 80C11F18  40 81 00 08 */	ble lbl_80C11F20
/* 80C11F1C  4B 6B CE 21 */	bl __dl__FPv
lbl_80C11F20:
/* 80C11F20  7F E3 FB 78 */	mr r3, r31
/* 80C11F24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C11F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C11F2C  7C 08 03 A6 */	mtlr r0
/* 80C11F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C11F34  4E 80 00 20 */	blr 
