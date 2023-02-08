lbl_80603EE4:
/* 80603EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80603EE8  7C 08 02 A6 */	mflr r0
/* 80603EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80603EF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80603EF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80603EF8  41 82 00 1C */	beq lbl_80603F14
/* 80603EFC  3C A0 80 60 */	lis r5, __vt__8cM3dGAab@ha /* 0x806040FC@ha */
/* 80603F00  38 05 40 FC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x806040FC@l */
/* 80603F04  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80603F08  7C 80 07 35 */	extsh. r0, r4
/* 80603F0C  40 81 00 08 */	ble lbl_80603F14
/* 80603F10  4B CC AE 2D */	bl __dl__FPv
lbl_80603F14:
/* 80603F14  7F E3 FB 78 */	mr r3, r31
/* 80603F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80603F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80603F20  7C 08 03 A6 */	mtlr r0
/* 80603F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80603F28  4E 80 00 20 */	blr 
