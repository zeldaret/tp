lbl_8046ED8C:
/* 8046ED8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046ED90  7C 08 02 A6 */	mflr r0
/* 8046ED94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046ED98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046ED9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046EDA0  41 82 00 1C */	beq lbl_8046EDBC
/* 8046EDA4  3C A0 80 47 */	lis r5, __vt__8cM3dGAab@ha /* 0x8046EF3C@ha */
/* 8046EDA8  38 05 EF 3C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8046EF3C@l */
/* 8046EDAC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8046EDB0  7C 80 07 35 */	extsh. r0, r4
/* 8046EDB4  40 81 00 08 */	ble lbl_8046EDBC
/* 8046EDB8  4B E5 FF 85 */	bl __dl__FPv
lbl_8046EDBC:
/* 8046EDBC  7F E3 FB 78 */	mr r3, r31
/* 8046EDC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046EDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046EDC8  7C 08 03 A6 */	mtlr r0
/* 8046EDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8046EDD0  4E 80 00 20 */	blr 
