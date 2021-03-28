lbl_809D0B90:
/* 809D0B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D0B94  7C 08 02 A6 */	mflr r0
/* 809D0B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D0B9C  7C 60 1B 78 */	mr r0, r3
/* 809D0BA0  2C 04 00 00 */	cmpwi r4, 0
/* 809D0BA4  40 82 00 24 */	bne lbl_809D0BC8
/* 809D0BA8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 809D0BAC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 809D0BB0  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 809D0BB4  80 65 00 14 */	lwz r3, 0x14(r5)
/* 809D0BB8  28 03 00 00 */	cmplwi r3, 0
/* 809D0BBC  41 82 00 0C */	beq lbl_809D0BC8
/* 809D0BC0  7C 04 03 78 */	mr r4, r0
/* 809D0BC4  4B FF FD 79 */	bl ctrlJoint__11daNpc_Grd_cFP8J3DJointP8J3DModel
lbl_809D0BC8:
/* 809D0BC8  38 60 00 01 */	li r3, 1
/* 809D0BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D0BD0  7C 08 03 A6 */	mtlr r0
/* 809D0BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 809D0BD8  4E 80 00 20 */	blr 
