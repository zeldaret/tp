lbl_806FA7FC:
/* 806FA7FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FA800  7C 08 02 A6 */	mflr r0
/* 806FA804  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FA808  7C 60 1B 78 */	mr r0, r3
/* 806FA80C  2C 04 00 00 */	cmpwi r4, 0
/* 806FA810  40 82 00 24 */	bne lbl_806FA834
/* 806FA814  3C 60 80 43 */	lis r3, j3dSys@ha
/* 806FA818  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 806FA81C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 806FA820  80 65 00 14 */	lwz r3, 0x14(r5)
/* 806FA824  28 03 00 00 */	cmplwi r3, 0
/* 806FA828  41 82 00 0C */	beq lbl_806FA834
/* 806FA82C  7C 04 03 78 */	mr r4, r0
/* 806FA830  4B FF FF 2D */	bl ctrlJoint__8daE_KK_cFP8J3DJointP8J3DModel
lbl_806FA834:
/* 806FA834  38 60 00 01 */	li r3, 1
/* 806FA838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FA83C  7C 08 03 A6 */	mtlr r0
/* 806FA840  38 21 00 10 */	addi r1, r1, 0x10
/* 806FA844  4E 80 00 20 */	blr 
