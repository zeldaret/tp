lbl_80982AB8:
/* 80982AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80982ABC  7C 08 02 A6 */	mflr r0
/* 80982AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80982AC4  7C 60 1B 78 */	mr r0, r3
/* 80982AC8  2C 04 00 00 */	cmpwi r4, 0
/* 80982ACC  40 82 00 24 */	bne lbl_80982AF0
/* 80982AD0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80982AD4  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80982AD8  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80982ADC  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80982AE0  28 03 00 00 */	cmplwi r3, 0
/* 80982AE4  41 82 00 0C */	beq lbl_80982AF0
/* 80982AE8  7C 04 03 78 */	mr r4, r0
/* 80982AEC  4B FF FC 95 */	bl ctrlJoint__11daNpcChat_cFP8J3DJointP8J3DModel
lbl_80982AF0:
/* 80982AF0  38 60 00 01 */	li r3, 1
/* 80982AF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80982AF8  7C 08 03 A6 */	mtlr r0
/* 80982AFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80982B00  4E 80 00 20 */	blr 
