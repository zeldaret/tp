lbl_80312A24:
/* 80312A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80312A28  7C 08 02 A6 */	mflr r0
/* 80312A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80312A30  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80312A34  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80312A38  4B FF FC 0D */	bl beginDL__17J3DDisplayListObjFv
/* 80312A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80312A40  7C 08 03 A6 */	mtlr r0
/* 80312A44  38 21 00 10 */	addi r1, r1, 0x10
/* 80312A48  4E 80 00 20 */	blr 
