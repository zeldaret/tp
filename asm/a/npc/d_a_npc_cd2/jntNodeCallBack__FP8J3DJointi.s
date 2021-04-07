lbl_80157CB4:
/* 80157CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80157CB8  7C 08 02 A6 */	mflr r0
/* 80157CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80157CC0  7C 60 1B 78 */	mr r0, r3
/* 80157CC4  2C 04 00 00 */	cmpwi r4, 0
/* 80157CC8  40 82 00 24 */	bne lbl_80157CEC
/* 80157CCC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80157CD0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80157CD4  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80157CD8  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80157CDC  28 03 00 00 */	cmplwi r3, 0
/* 80157CE0  41 82 00 0C */	beq lbl_80157CEC
/* 80157CE4  7C 04 03 78 */	mr r4, r0
/* 80157CE8  48 00 15 71 */	bl jntNodeCB__10daNpcCd2_cFP8J3DJointP8J3DModel
lbl_80157CEC:
/* 80157CEC  38 60 00 01 */	li r3, 1
/* 80157CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80157CF4  7C 08 03 A6 */	mtlr r0
/* 80157CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80157CFC  4E 80 00 20 */	blr 
