lbl_80AFD4BC:
/* 80AFD4BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFD4C0  7C 08 02 A6 */	mflr r0
/* 80AFD4C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFD4C8  7C 60 1B 78 */	mr r0, r3
/* 80AFD4CC  2C 04 00 00 */	cmpwi r4, 0
/* 80AFD4D0  40 82 00 24 */	bne lbl_80AFD4F4
/* 80AFD4D4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80AFD4D8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80AFD4DC  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80AFD4E0  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80AFD4E4  28 03 00 00 */	cmplwi r3, 0
/* 80AFD4E8  41 82 00 0C */	beq lbl_80AFD4F4
/* 80AFD4EC  7C 04 03 78 */	mr r4, r0
/* 80AFD4F0  4B FF FD B9 */	bl ctrlJoint__11daNpcTheB_cFP8J3DJointP8J3DModel
lbl_80AFD4F4:
/* 80AFD4F4  38 60 00 01 */	li r3, 1
/* 80AFD4F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFD4FC  7C 08 03 A6 */	mtlr r0
/* 80AFD500  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFD504  4E 80 00 20 */	blr 
