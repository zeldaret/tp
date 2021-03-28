lbl_80CD7468:
/* 80CD7468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD746C  7C 08 02 A6 */	mflr r0
/* 80CD7470  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD7474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD7478  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD747C  41 82 00 1C */	beq lbl_80CD7498
/* 80CD7480  3C A0 80 CE */	lis r5, __vt__8cM3dGAab@ha
/* 80CD7484  38 05 84 9C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CD7488  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CD748C  7C 80 07 35 */	extsh. r0, r4
/* 80CD7490  40 81 00 08 */	ble lbl_80CD7498
/* 80CD7494  4B 5F 78 A8 */	b __dl__FPv
lbl_80CD7498:
/* 80CD7498  7F E3 FB 78 */	mr r3, r31
/* 80CD749C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD74A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD74A4  7C 08 03 A6 */	mtlr r0
/* 80CD74A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD74AC  4E 80 00 20 */	blr 
