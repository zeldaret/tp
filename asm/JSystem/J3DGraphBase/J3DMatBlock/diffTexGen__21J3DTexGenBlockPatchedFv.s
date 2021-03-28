lbl_8031AD30:
/* 8031AD30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031AD34  7C 08 02 A6 */	mflr r0
/* 8031AD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031AD3C  7C 64 1B 78 */	mr r4, r3
/* 8031AD40  80 63 00 04 */	lwz r3, 4(r3)
/* 8031AD44  28 03 00 00 */	cmplwi r3, 0
/* 8031AD48  41 82 00 0C */	beq lbl_8031AD54
/* 8031AD4C  38 84 00 08 */	addi r4, r4, 8
/* 8031AD50  48 00 88 F5 */	bl loadTexCoordGens__FUlP11J3DTexCoord
lbl_8031AD54:
/* 8031AD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031AD58  7C 08 03 A6 */	mtlr r0
/* 8031AD5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8031AD60  4E 80 00 20 */	blr 
