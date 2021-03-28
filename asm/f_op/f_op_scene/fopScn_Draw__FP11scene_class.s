lbl_8001EB34:
/* 8001EB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EB38  7C 08 02 A6 */	mflr r0
/* 8001EB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EB40  7C 64 1B 78 */	mr r4, r3
/* 8001EB44  80 63 01 AC */	lwz r3, 0x1ac(r3)
/* 8001EB48  48 00 39 A9 */	bl fpcNd_DrawMethod__FP21nodedraw_method_classPv
/* 8001EB4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EB50  7C 08 03 A6 */	mtlr r0
/* 8001EB54  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EB58  4E 80 00 20 */	blr 
