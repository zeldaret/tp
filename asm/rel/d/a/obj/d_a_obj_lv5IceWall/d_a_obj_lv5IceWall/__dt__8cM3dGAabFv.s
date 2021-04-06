lbl_80C6BABC:
/* 80C6BABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6BAC0  7C 08 02 A6 */	mflr r0
/* 80C6BAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6BAC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6BACC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6BAD0  41 82 00 1C */	beq lbl_80C6BAEC
/* 80C6BAD4  3C A0 80 C7 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C6C7C4@ha */
/* 80C6BAD8  38 05 C7 C4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C6C7C4@l */
/* 80C6BADC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C6BAE0  7C 80 07 35 */	extsh. r0, r4
/* 80C6BAE4  40 81 00 08 */	ble lbl_80C6BAEC
/* 80C6BAE8  4B 66 32 55 */	bl __dl__FPv
lbl_80C6BAEC:
/* 80C6BAEC  7F E3 FB 78 */	mr r3, r31
/* 80C6BAF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6BAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6BAF8  7C 08 03 A6 */	mtlr r0
/* 80C6BAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6BB00  4E 80 00 20 */	blr 
