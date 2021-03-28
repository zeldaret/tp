lbl_809E97BC:
/* 809E97BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E97C0  7C 08 02 A6 */	mflr r0
/* 809E97C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E97C8  7C 60 1B 78 */	mr r0, r3
/* 809E97CC  2C 04 00 00 */	cmpwi r4, 0
/* 809E97D0  40 82 00 24 */	bne lbl_809E97F4
/* 809E97D4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 809E97D8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 809E97DC  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 809E97E0  80 65 00 14 */	lwz r3, 0x14(r5)
/* 809E97E4  28 03 00 00 */	cmplwi r3, 0
/* 809E97E8  41 82 00 0C */	beq lbl_809E97F4
/* 809E97EC  7C 04 03 78 */	mr r4, r0
/* 809E97F0  4B FF FD 79 */	bl ctrlJoint__11daNpc_Grz_cFP8J3DJointP8J3DModel
lbl_809E97F4:
/* 809E97F4  38 60 00 01 */	li r3, 1
/* 809E97F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E97FC  7C 08 03 A6 */	mtlr r0
/* 809E9800  38 21 00 10 */	addi r1, r1, 0x10
/* 809E9804  4E 80 00 20 */	blr 
