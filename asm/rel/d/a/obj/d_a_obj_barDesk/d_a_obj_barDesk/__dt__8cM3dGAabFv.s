lbl_80BA9500:
/* 80BA9500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA9504  7C 08 02 A6 */	mflr r0
/* 80BA9508  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA950C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA9510  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA9514  41 82 00 1C */	beq lbl_80BA9530
/* 80BA9518  3C A0 80 BB */	lis r5, __vt__8cM3dGAab@ha /* 0x80BA9CC4@ha */
/* 80BA951C  38 05 9C C4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BA9CC4@l */
/* 80BA9520  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BA9524  7C 80 07 35 */	extsh. r0, r4
/* 80BA9528  40 81 00 08 */	ble lbl_80BA9530
/* 80BA952C  4B 72 58 11 */	bl __dl__FPv
lbl_80BA9530:
/* 80BA9530  7F E3 FB 78 */	mr r3, r31
/* 80BA9534  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA9538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA953C  7C 08 03 A6 */	mtlr r0
/* 80BA9540  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9544  4E 80 00 20 */	blr 
