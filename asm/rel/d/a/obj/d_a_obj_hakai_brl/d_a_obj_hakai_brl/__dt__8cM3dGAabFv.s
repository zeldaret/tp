lbl_80C16874:
/* 80C16874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C16878  7C 08 02 A6 */	mflr r0
/* 80C1687C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16884  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C16888  41 82 00 1C */	beq lbl_80C168A4
/* 80C1688C  3C A0 80 C1 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C17400@ha */
/* 80C16890  38 05 74 00 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C17400@l */
/* 80C16894  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C16898  7C 80 07 35 */	extsh. r0, r4
/* 80C1689C  40 81 00 08 */	ble lbl_80C168A4
/* 80C168A0  4B 6B 84 9D */	bl __dl__FPv
lbl_80C168A4:
/* 80C168A4  7F E3 FB 78 */	mr r3, r31
/* 80C168A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C168AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C168B0  7C 08 03 A6 */	mtlr r0
/* 80C168B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C168B8  4E 80 00 20 */	blr 
