lbl_809F420C:
/* 809F420C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F4210  7C 08 02 A6 */	mflr r0
/* 809F4214  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F4218  7C 60 1B 78 */	mr r0, r3
/* 809F421C  2C 04 00 00 */	cmpwi r4, 0
/* 809F4220  40 82 00 24 */	bne lbl_809F4244
/* 809F4224  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 809F4228  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 809F422C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 809F4230  80 65 00 14 */	lwz r3, 0x14(r5)
/* 809F4234  28 03 00 00 */	cmplwi r3, 0
/* 809F4238  41 82 00 0C */	beq lbl_809F4244
/* 809F423C  7C 04 03 78 */	mr r4, r0
/* 809F4240  4B FF FD 79 */	bl ctrlJoint__13daNpc_GWolf_cFP8J3DJointP8J3DModel
lbl_809F4244:
/* 809F4244  38 60 00 01 */	li r3, 1
/* 809F4248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F424C  7C 08 03 A6 */	mtlr r0
/* 809F4250  38 21 00 10 */	addi r1, r1, 0x10
/* 809F4254  4E 80 00 20 */	blr 
