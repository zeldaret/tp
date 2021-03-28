lbl_80969B88:
/* 80969B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80969B8C  7C 08 02 A6 */	mflr r0
/* 80969B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80969B94  7C 60 1B 78 */	mr r0, r3
/* 80969B98  2C 04 00 00 */	cmpwi r4, 0
/* 80969B9C  40 82 00 24 */	bne lbl_80969BC0
/* 80969BA0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80969BA4  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80969BA8  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80969BAC  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80969BB0  28 03 00 00 */	cmplwi r3, 0
/* 80969BB4  41 82 00 0C */	beq lbl_80969BC0
/* 80969BB8  7C 04 03 78 */	mr r4, r0
/* 80969BBC  4B FF FE 15 */	bl ctrlJoint__13daNpcBlueNS_cFP8J3DJointP8J3DModel
lbl_80969BC0:
/* 80969BC0  38 60 00 01 */	li r3, 1
/* 80969BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80969BC8  7C 08 03 A6 */	mtlr r0
/* 80969BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80969BD0  4E 80 00 20 */	blr 
