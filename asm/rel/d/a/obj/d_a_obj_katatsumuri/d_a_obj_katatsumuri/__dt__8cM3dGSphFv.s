lbl_80C3C4C4:
/* 80C3C4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3C4C8  7C 08 02 A6 */	mflr r0
/* 80C3C4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3C4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3C4D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C3C4D8  41 82 00 1C */	beq lbl_80C3C4F4
/* 80C3C4DC  3C A0 80 C4 */	lis r5, __vt__8cM3dGSph@ha /* 0x80C3C7C0@ha */
/* 80C3C4E0  38 05 C7 C0 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80C3C7C0@l */
/* 80C3C4E4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C3C4E8  7C 80 07 35 */	extsh. r0, r4
/* 80C3C4EC  40 81 00 08 */	ble lbl_80C3C4F4
/* 80C3C4F0  4B 69 28 4D */	bl __dl__FPv
lbl_80C3C4F4:
/* 80C3C4F4  7F E3 FB 78 */	mr r3, r31
/* 80C3C4F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3C4FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3C500  7C 08 03 A6 */	mtlr r0
/* 80C3C504  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3C508  4E 80 00 20 */	blr 
