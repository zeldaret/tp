lbl_80C92B54:
/* 80C92B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C92B58  7C 08 02 A6 */	mflr r0
/* 80C92B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C92B60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C92B64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C92B68  41 82 00 1C */	beq lbl_80C92B84
/* 80C92B6C  3C A0 80 C9 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C92DC4@ha */
/* 80C92B70  38 05 2D C4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C92DC4@l */
/* 80C92B74  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C92B78  7C 80 07 35 */	extsh. r0, r4
/* 80C92B7C  40 81 00 08 */	ble lbl_80C92B84
/* 80C92B80  4B 63 C1 BD */	bl __dl__FPv
lbl_80C92B84:
/* 80C92B84  7F E3 FB 78 */	mr r3, r31
/* 80C92B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C92B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C92B90  7C 08 03 A6 */	mtlr r0
/* 80C92B94  38 21 00 10 */	addi r1, r1, 0x10
/* 80C92B98  4E 80 00 20 */	blr 
