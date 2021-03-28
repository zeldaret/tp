lbl_806C6EA4:
/* 806C6EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C6EA8  7C 08 02 A6 */	mflr r0
/* 806C6EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C6EB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C6EB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806C6EB8  41 82 00 1C */	beq lbl_806C6ED4
/* 806C6EBC  3C A0 80 6C */	lis r5, __vt__8cM3dGAab@ha
/* 806C6EC0  38 05 78 FC */	addi r0, r5, __vt__8cM3dGAab@l
/* 806C6EC4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806C6EC8  7C 80 07 35 */	extsh. r0, r4
/* 806C6ECC  40 81 00 08 */	ble lbl_806C6ED4
/* 806C6ED0  4B C0 7E 6C */	b __dl__FPv
lbl_806C6ED4:
/* 806C6ED4  7F E3 FB 78 */	mr r3, r31
/* 806C6ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C6EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C6EE0  7C 08 03 A6 */	mtlr r0
/* 806C6EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 806C6EE8  4E 80 00 20 */	blr 
