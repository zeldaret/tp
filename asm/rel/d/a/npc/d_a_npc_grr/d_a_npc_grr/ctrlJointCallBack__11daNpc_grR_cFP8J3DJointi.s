lbl_809E0734:
/* 809E0734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E0738  7C 08 02 A6 */	mflr r0
/* 809E073C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E0740  7C 60 1B 78 */	mr r0, r3
/* 809E0744  2C 04 00 00 */	cmpwi r4, 0
/* 809E0748  40 82 00 24 */	bne lbl_809E076C
/* 809E074C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 809E0750  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 809E0754  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 809E0758  80 65 00 14 */	lwz r3, 0x14(r5)
/* 809E075C  28 03 00 00 */	cmplwi r3, 0
/* 809E0760  41 82 00 0C */	beq lbl_809E076C
/* 809E0764  7C 04 03 78 */	mr r4, r0
/* 809E0768  4B FF FD 79 */	bl ctrlJoint__11daNpc_grR_cFP8J3DJointP8J3DModel
lbl_809E076C:
/* 809E076C  38 60 00 01 */	li r3, 1
/* 809E0770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E0774  7C 08 03 A6 */	mtlr r0
/* 809E0778  38 21 00 10 */	addi r1, r1, 0x10
/* 809E077C  4E 80 00 20 */	blr 
