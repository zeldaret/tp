lbl_809CC0E0:
/* 809CC0E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CC0E4  7C 08 02 A6 */	mflr r0
/* 809CC0E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CC0EC  7C 60 1B 78 */	mr r0, r3
/* 809CC0F0  2C 04 00 00 */	cmpwi r4, 0
/* 809CC0F4  40 82 00 24 */	bne lbl_809CC118
/* 809CC0F8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 809CC0FC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 809CC100  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 809CC104  80 65 00 14 */	lwz r3, 0x14(r5)
/* 809CC108  28 03 00 00 */	cmplwi r3, 0
/* 809CC10C  41 82 00 0C */	beq lbl_809CC118
/* 809CC110  7C 04 03 78 */	mr r4, r0
/* 809CC114  4B FF FD 79 */	bl ctrlJoint__11daNpc_grC_cFP8J3DJointP8J3DModel
lbl_809CC118:
/* 809CC118  38 60 00 01 */	li r3, 1
/* 809CC11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CC120  7C 08 03 A6 */	mtlr r0
/* 809CC124  38 21 00 10 */	addi r1, r1, 0x10
/* 809CC128  4E 80 00 20 */	blr 
