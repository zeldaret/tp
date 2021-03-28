lbl_805F5EF4:
/* 805F5EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F5EF8  7C 08 02 A6 */	mflr r0
/* 805F5EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F5F00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F5F04  7C 7F 1B 79 */	or. r31, r3, r3
/* 805F5F08  41 82 00 1C */	beq lbl_805F5F24
/* 805F5F0C  3C A0 80 60 */	lis r5, __vt__8cM3dGPla@ha
/* 805F5F10  38 05 2F 48 */	addi r0, r5, __vt__8cM3dGPla@l
/* 805F5F14  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805F5F18  7C 80 07 35 */	extsh. r0, r4
/* 805F5F1C  40 81 00 08 */	ble lbl_805F5F24
/* 805F5F20  4B CD 8E 1C */	b __dl__FPv
lbl_805F5F24:
/* 805F5F24  7F E3 FB 78 */	mr r3, r31
/* 805F5F28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F5F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F5F30  7C 08 03 A6 */	mtlr r0
/* 805F5F34  38 21 00 10 */	addi r1, r1, 0x10
/* 805F5F38  4E 80 00 20 */	blr 
