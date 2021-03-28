lbl_80B7ABBC:
/* 80B7ABBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7ABC0  7C 08 02 A6 */	mflr r0
/* 80B7ABC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7ABC8  7C 60 1B 78 */	mr r0, r3
/* 80B7ABCC  2C 04 00 00 */	cmpwi r4, 0
/* 80B7ABD0  40 82 00 24 */	bne lbl_80B7ABF4
/* 80B7ABD4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80B7ABD8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80B7ABDC  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80B7ABE0  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80B7ABE4  28 03 00 00 */	cmplwi r3, 0
/* 80B7ABE8  41 82 00 0C */	beq lbl_80B7ABF4
/* 80B7ABEC  7C 04 03 78 */	mr r4, r0
/* 80B7ABF0  4B FF FC 75 */	bl ctrlJoint__11daNpc_zrA_cFP8J3DJointP8J3DModel
lbl_80B7ABF4:
/* 80B7ABF4  38 60 00 01 */	li r3, 1
/* 80B7ABF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7ABFC  7C 08 03 A6 */	mtlr r0
/* 80B7AC00  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7AC04  4E 80 00 20 */	blr 
