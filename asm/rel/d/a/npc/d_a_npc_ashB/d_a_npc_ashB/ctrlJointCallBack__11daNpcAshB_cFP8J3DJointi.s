lbl_8095EBB4:
/* 8095EBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095EBB8  7C 08 02 A6 */	mflr r0
/* 8095EBBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095EBC0  7C 60 1B 78 */	mr r0, r3
/* 8095EBC4  2C 04 00 00 */	cmpwi r4, 0
/* 8095EBC8  40 82 00 24 */	bne lbl_8095EBEC
/* 8095EBCC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8095EBD0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8095EBD4  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 8095EBD8  80 65 00 14 */	lwz r3, 0x14(r5)
/* 8095EBDC  28 03 00 00 */	cmplwi r3, 0
/* 8095EBE0  41 82 00 0C */	beq lbl_8095EBEC
/* 8095EBE4  7C 04 03 78 */	mr r4, r0
/* 8095EBE8  4B FF FD E1 */	bl ctrlJoint__11daNpcAshB_cFP8J3DJointP8J3DModel
lbl_8095EBEC:
/* 8095EBEC  38 60 00 01 */	li r3, 1
/* 8095EBF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095EBF4  7C 08 03 A6 */	mtlr r0
/* 8095EBF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8095EBFC  4E 80 00 20 */	blr 
