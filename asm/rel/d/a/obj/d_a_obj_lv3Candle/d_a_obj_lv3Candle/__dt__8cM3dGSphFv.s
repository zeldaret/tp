lbl_80C57EDC:
/* 80C57EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57EE0  7C 08 02 A6 */	mflr r0
/* 80C57EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57EE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C57EEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C57EF0  41 82 00 1C */	beq lbl_80C57F0C
/* 80C57EF4  3C A0 80 C6 */	lis r5, __vt__8cM3dGSph@ha
/* 80C57EF8  38 05 86 88 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80C57EFC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C57F00  7C 80 07 35 */	extsh. r0, r4
/* 80C57F04  40 81 00 08 */	ble lbl_80C57F0C
/* 80C57F08  4B 67 6E 34 */	b __dl__FPv
lbl_80C57F0C:
/* 80C57F0C  7F E3 FB 78 */	mr r3, r31
/* 80C57F10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C57F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C57F18  7C 08 03 A6 */	mtlr r0
/* 80C57F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57F20  4E 80 00 20 */	blr 
