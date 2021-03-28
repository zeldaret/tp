lbl_806F78F8:
/* 806F78F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F78FC  7C 08 02 A6 */	mflr r0
/* 806F7900  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F7904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F7908  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F790C  41 82 00 1C */	beq lbl_806F7928
/* 806F7910  3C A0 80 6F */	lis r5, __vt__8cM3dGAab@ha
/* 806F7914  38 05 7D 8C */	addi r0, r5, __vt__8cM3dGAab@l
/* 806F7918  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806F791C  7C 80 07 35 */	extsh. r0, r4
/* 806F7920  40 81 00 08 */	ble lbl_806F7928
/* 806F7924  4B BD 74 18 */	b __dl__FPv
lbl_806F7928:
/* 806F7928  7F E3 FB 78 */	mr r3, r31
/* 806F792C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F7930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F7934  7C 08 03 A6 */	mtlr r0
/* 806F7938  38 21 00 10 */	addi r1, r1, 0x10
/* 806F793C  4E 80 00 20 */	blr 
