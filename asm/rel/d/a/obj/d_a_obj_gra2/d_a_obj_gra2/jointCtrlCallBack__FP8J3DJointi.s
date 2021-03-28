lbl_80BFFF0C:
/* 80BFFF0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFFF10  7C 08 02 A6 */	mflr r0
/* 80BFFF14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFFF18  7C 60 1B 78 */	mr r0, r3
/* 80BFFF1C  2C 04 00 00 */	cmpwi r4, 0
/* 80BFFF20  40 82 00 24 */	bne lbl_80BFFF44
/* 80BFFF24  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BFFF28  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80BFFF2C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80BFFF30  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80BFFF34  28 03 00 00 */	cmplwi r3, 0
/* 80BFFF38  41 82 00 0C */	beq lbl_80BFFF44
/* 80BFFF3C  7C 04 03 78 */	mr r4, r0
/* 80BFFF40  48 00 0B 8D */	bl jointCtrl__11daObj_GrA_cFP8J3DJointP8J3DModel
lbl_80BFFF44:
/* 80BFFF44  38 60 00 01 */	li r3, 1
/* 80BFFF48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFFF4C  7C 08 03 A6 */	mtlr r0
/* 80BFFF50  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFFF54  4E 80 00 20 */	blr 
