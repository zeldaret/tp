lbl_80848CE0:
/* 80848CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80848CE4  7C 08 02 A6 */	mflr r0
/* 80848CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80848CEC  7C 83 23 78 */	mr r3, r4
/* 80848CF0  7C A4 2B 78 */	mr r4, r5
/* 80848CF4  4B AE 5F B8 */	b init__24J3DMtxCalcJ3DSysInitMayaFRC3VecRA3_A4_Cf
/* 80848CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80848CFC  7C 08 03 A6 */	mtlr r0
/* 80848D00  38 21 00 10 */	addi r1, r1, 0x10
/* 80848D04  4E 80 00 20 */	blr 
