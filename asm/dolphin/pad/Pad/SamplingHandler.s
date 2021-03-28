lbl_8034FB40:
/* 8034FB40  7C 08 02 A6 */	mflr r0
/* 8034FB44  90 01 00 04 */	stw r0, 4(r1)
/* 8034FB48  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8034FB4C  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8034FB50  3B E4 00 00 */	addi r31, r4, 0
/* 8034FB54  80 0D 92 E8 */	lwz r0, SamplingCallback(r13)
/* 8034FB58  28 00 00 00 */	cmplwi r0, 0
/* 8034FB5C  41 82 00 30 */	beq lbl_8034FB8C
/* 8034FB60  38 61 00 10 */	addi r3, r1, 0x10
/* 8034FB64  4B FE C4 9D */	bl OSClearContext
/* 8034FB68  38 61 00 10 */	addi r3, r1, 0x10
/* 8034FB6C  4B FE C2 CD */	bl OSSetCurrentContext
/* 8034FB70  81 8D 92 E8 */	lwz r12, SamplingCallback(r13)
/* 8034FB74  7D 88 03 A6 */	mtlr r12
/* 8034FB78  4E 80 00 21 */	blrl 
/* 8034FB7C  38 61 00 10 */	addi r3, r1, 0x10
/* 8034FB80  4B FE C4 81 */	bl OSClearContext
/* 8034FB84  7F E3 FB 78 */	mr r3, r31
/* 8034FB88  4B FE C2 B1 */	bl OSSetCurrentContext
lbl_8034FB8C:
/* 8034FB8C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8034FB90  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8034FB94  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8034FB98  7C 08 03 A6 */	mtlr r0
/* 8034FB9C  4E 80 00 20 */	blr 
