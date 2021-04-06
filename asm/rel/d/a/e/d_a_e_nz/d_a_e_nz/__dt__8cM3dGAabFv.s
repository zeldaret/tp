lbl_8072BABC:
/* 8072BABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072BAC0  7C 08 02 A6 */	mflr r0
/* 8072BAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072BAC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072BACC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8072BAD0  41 82 00 1C */	beq lbl_8072BAEC
/* 8072BAD4  3C A0 80 73 */	lis r5, __vt__8cM3dGAab@ha /* 0x8072C3A4@ha */
/* 8072BAD8  38 05 C3 A4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8072C3A4@l */
/* 8072BADC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8072BAE0  7C 80 07 35 */	extsh. r0, r4
/* 8072BAE4  40 81 00 08 */	ble lbl_8072BAEC
/* 8072BAE8  4B BA 32 55 */	bl __dl__FPv
lbl_8072BAEC:
/* 8072BAEC  7F E3 FB 78 */	mr r3, r31
/* 8072BAF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072BAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072BAF8  7C 08 03 A6 */	mtlr r0
/* 8072BAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8072BB00  4E 80 00 20 */	blr 
