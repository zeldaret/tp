lbl_80AF0130:
/* 80AF0130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF0134  7C 08 02 A6 */	mflr r0
/* 80AF0138  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF013C  7C 60 1B 78 */	mr r0, r3
/* 80AF0140  2C 04 00 00 */	cmpwi r4, 0
/* 80AF0144  40 82 00 24 */	bne lbl_80AF0168
/* 80AF0148  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80AF014C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80AF0150  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80AF0154  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80AF0158  28 03 00 00 */	cmplwi r3, 0
/* 80AF015C  41 82 00 0C */	beq lbl_80AF0168
/* 80AF0160  7C 04 03 78 */	mr r4, r0
/* 80AF0164  4B FF FD B1 */	bl ctrlJoint__16daNpc_SoldierA_cFP8J3DJointP8J3DModel
lbl_80AF0168:
/* 80AF0168  38 60 00 01 */	li r3, 1
/* 80AF016C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF0170  7C 08 03 A6 */	mtlr r0
/* 80AF0174  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF0178  4E 80 00 20 */	blr 
