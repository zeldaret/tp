lbl_80CB952C:
/* 80CB952C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB9530  7C 08 02 A6 */	mflr r0
/* 80CB9534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9538  88 03 05 AE */	lbz r0, 0x5ae(r3)
/* 80CB953C  28 00 00 00 */	cmplwi r0, 0
/* 80CB9540  41 82 00 08 */	beq lbl_80CB9548
/* 80CB9544  48 00 00 15 */	bl init_modeBreak__10daRfHole_cFv
lbl_80CB9548:
/* 80CB9548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB954C  7C 08 03 A6 */	mtlr r0
/* 80CB9550  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9554  4E 80 00 20 */	blr 
