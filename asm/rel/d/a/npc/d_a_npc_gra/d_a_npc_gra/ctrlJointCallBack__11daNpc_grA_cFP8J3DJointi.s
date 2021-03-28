lbl_809BF758:
/* 809BF758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BF75C  7C 08 02 A6 */	mflr r0
/* 809BF760  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BF764  7C 60 1B 78 */	mr r0, r3
/* 809BF768  2C 04 00 00 */	cmpwi r4, 0
/* 809BF76C  40 82 00 24 */	bne lbl_809BF790
/* 809BF770  3C 60 80 43 */	lis r3, j3dSys@ha
/* 809BF774  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 809BF778  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 809BF77C  80 65 00 14 */	lwz r3, 0x14(r5)
/* 809BF780  28 03 00 00 */	cmplwi r3, 0
/* 809BF784  41 82 00 0C */	beq lbl_809BF790
/* 809BF788  7C 04 03 78 */	mr r4, r0
/* 809BF78C  4B FF FD 79 */	bl ctrlJoint__11daNpc_grA_cFP8J3DJointP8J3DModel
lbl_809BF790:
/* 809BF790  38 60 00 01 */	li r3, 1
/* 809BF794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BF798  7C 08 03 A6 */	mtlr r0
/* 809BF79C  38 21 00 10 */	addi r1, r1, 0x10
/* 809BF7A0  4E 80 00 20 */	blr 
