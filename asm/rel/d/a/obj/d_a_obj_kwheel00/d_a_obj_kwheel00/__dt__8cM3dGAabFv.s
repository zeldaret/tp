lbl_80C4E52C:
/* 80C4E52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4E530  7C 08 02 A6 */	mflr r0
/* 80C4E534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4E538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4E53C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C4E540  41 82 00 1C */	beq lbl_80C4E55C
/* 80C4E544  3C A0 80 C5 */	lis r5, __vt__8cM3dGAab@ha
/* 80C4E548  38 05 E9 88 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C4E54C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C4E550  7C 80 07 35 */	extsh. r0, r4
/* 80C4E554  40 81 00 08 */	ble lbl_80C4E55C
/* 80C4E558  4B 68 07 E4 */	b __dl__FPv
lbl_80C4E55C:
/* 80C4E55C  7F E3 FB 78 */	mr r3, r31
/* 80C4E560  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4E564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4E568  7C 08 03 A6 */	mtlr r0
/* 80C4E56C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4E570  4E 80 00 20 */	blr 
