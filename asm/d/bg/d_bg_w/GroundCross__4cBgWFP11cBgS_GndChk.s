lbl_8007AB9C:
/* 8007AB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007ABA0  7C 08 02 A6 */	mflr r0
/* 8007ABA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007ABA8  A0 A3 00 92 */	lhz r5, 0x92(r3)
/* 8007ABAC  38 C0 00 01 */	li r6, 1
/* 8007ABB0  4B FF FE A1 */	bl GroundCrossGrpRp__4cBgWFP11cBgS_GndChkii
/* 8007ABB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007ABB8  7C 08 03 A6 */	mtlr r0
/* 8007ABBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8007ABC0  4E 80 00 20 */	blr 
