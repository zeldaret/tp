lbl_8098CFD8:
/* 8098CFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098CFDC  7C 08 02 A6 */	mflr r0
/* 8098CFE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098CFE4  7C 60 1B 78 */	mr r0, r3
/* 8098CFE8  2C 04 00 00 */	cmpwi r4, 0
/* 8098CFEC  40 82 00 24 */	bne lbl_8098D010
/* 8098CFF0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8098CFF4  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8098CFF8  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 8098CFFC  80 65 00 14 */	lwz r3, 0x14(r5)
/* 8098D000  28 03 00 00 */	cmplwi r3, 0
/* 8098D004  41 82 00 0C */	beq lbl_8098D010
/* 8098D008  7C 04 03 78 */	mr r4, r0
/* 8098D00C  4B FF FD DD */	bl ctrlJoint__11daNpcChin_cFP8J3DJointP8J3DModel
lbl_8098D010:
/* 8098D010  38 60 00 01 */	li r3, 1
/* 8098D014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098D018  7C 08 03 A6 */	mtlr r0
/* 8098D01C  38 21 00 10 */	addi r1, r1, 0x10
/* 8098D020  4E 80 00 20 */	blr 
