lbl_806BB52C:
/* 806BB52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BB530  7C 08 02 A6 */	mflr r0
/* 806BB534  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BB538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BB53C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806BB540  41 82 00 1C */	beq lbl_806BB55C
/* 806BB544  3C A0 80 6C */	lis r5, __vt__8cM3dGAab@ha
/* 806BB548  38 05 B8 7C */	addi r0, r5, __vt__8cM3dGAab@l
/* 806BB54C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806BB550  7C 80 07 35 */	extsh. r0, r4
/* 806BB554  40 81 00 08 */	ble lbl_806BB55C
/* 806BB558  4B C1 37 E4 */	b __dl__FPv
lbl_806BB55C:
/* 806BB55C  7F E3 FB 78 */	mr r3, r31
/* 806BB560  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BB564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BB568  7C 08 03 A6 */	mtlr r0
/* 806BB56C  38 21 00 10 */	addi r1, r1, 0x10
/* 806BB570  4E 80 00 20 */	blr 
