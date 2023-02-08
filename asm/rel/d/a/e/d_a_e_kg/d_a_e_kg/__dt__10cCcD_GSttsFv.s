lbl_806F9EA0:
/* 806F9EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F9EA4  7C 08 02 A6 */	mflr r0
/* 806F9EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F9EAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F9EB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F9EB4  41 82 00 1C */	beq lbl_806F9ED0
/* 806F9EB8  3C A0 80 70 */	lis r5, __vt__10cCcD_GStts@ha /* 0x806FA574@ha */
/* 806F9EBC  38 05 A5 74 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x806FA574@l */
/* 806F9EC0  90 1F 00 00 */	stw r0, 0(r31)
/* 806F9EC4  7C 80 07 35 */	extsh. r0, r4
/* 806F9EC8  40 81 00 08 */	ble lbl_806F9ED0
/* 806F9ECC  4B BD 4E 71 */	bl __dl__FPv
lbl_806F9ED0:
/* 806F9ED0  7F E3 FB 78 */	mr r3, r31
/* 806F9ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F9ED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F9EDC  7C 08 03 A6 */	mtlr r0
/* 806F9EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 806F9EE4  4E 80 00 20 */	blr 
