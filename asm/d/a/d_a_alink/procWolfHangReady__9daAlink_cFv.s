lbl_80135668:
/* 80135668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013566C  7C 08 02 A6 */	mflr r0
/* 80135670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80135674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80135678  7C 7F 1B 78 */	mr r31, r3
/* 8013567C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80135680  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 80135684  38 A0 00 02 */	li r5, 2
/* 80135688  38 C0 10 00 */	li r6, 0x1000
/* 8013568C  38 E0 04 00 */	li r7, 0x400
/* 80135690  48 13 AE B1 */	bl cLib_addCalcAngleS__FPsssss
/* 80135694  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80135698  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013569C  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 801356A0  48 02 8E 2D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801356A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801356A8  41 82 00 30 */	beq lbl_801356D8
/* 801356AC  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 801356B0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 801356B4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801356B8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 801356BC  7F E3 FB 78 */	mr r3, r31
/* 801356C0  80 9F 31 98 */	lwz r4, 0x3198(r31)
/* 801356C4  48 00 00 2D */	bl procWolfHangWallCatchInit__9daAlink_cFi
/* 801356C8  2C 03 00 00 */	cmpwi r3, 0
/* 801356CC  40 82 00 0C */	bne lbl_801356D8
/* 801356D0  7F E3 FB 78 */	mr r3, r31
/* 801356D4  4B F8 02 19 */	bl checkWaitAction__9daAlink_cFv
lbl_801356D8:
/* 801356D8  38 60 00 01 */	li r3, 1
/* 801356DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801356E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801356E4  7C 08 03 A6 */	mtlr r0
/* 801356E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801356EC  4E 80 00 20 */	blr 
