lbl_8032617C:
/* 8032617C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80326180  7C 08 02 A6 */	mflr r0
/* 80326184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80326188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032618C  93 C1 00 08 */	stw r30, 8(r1)
/* 80326190  7C 7E 1B 79 */	or. r30, r3, r3
/* 80326194  7C 9F 23 78 */	mr r31, r4
/* 80326198  41 82 00 60 */	beq lbl_803261F8
/* 8032619C  3C 60 80 3D */	lis r3, __vt__12J3DModelData@ha /* 0x803CED14@ha */
/* 803261A0  38 03 ED 14 */	addi r0, r3, __vt__12J3DModelData@l /* 0x803CED14@l */
/* 803261A4  90 1E 00 00 */	stw r0, 0(r30)
/* 803261A8  34 1E 00 78 */	addic. r0, r30, 0x78
/* 803261AC  41 82 00 10 */	beq lbl_803261BC
/* 803261B0  3C 60 80 3D */	lis r3, __vt__13J3DShapeTable@ha /* 0x803CED08@ha */
/* 803261B4  38 03 ED 08 */	addi r0, r3, __vt__13J3DShapeTable@l /* 0x803CED08@l */
/* 803261B8  90 1E 00 78 */	stw r0, 0x78(r30)
lbl_803261BC:
/* 803261BC  38 7E 00 58 */	addi r3, r30, 0x58
/* 803261C0  38 80 FF FF */	li r4, -1
/* 803261C4  48 00 94 41 */	bl __dt__16J3DMaterialTableFv
/* 803261C8  34 1E 00 10 */	addic. r0, r30, 0x10
/* 803261CC  41 82 00 1C */	beq lbl_803261E8
/* 803261D0  3C 60 80 3D */	lis r3, __vt__12J3DJointTree@ha /* 0x803CECF4@ha */
/* 803261D4  38 03 EC F4 */	addi r0, r3, __vt__12J3DJointTree@l /* 0x803CECF4@l */
/* 803261D8  90 1E 00 10 */	stw r0, 0x10(r30)
/* 803261DC  38 7E 00 44 */	addi r3, r30, 0x44
/* 803261E0  38 80 FF FF */	li r4, -1
/* 803261E4  4B FE B4 11 */	bl __dt__14J3DDrawMtxDataFv
lbl_803261E8:
/* 803261E8  7F E0 07 35 */	extsh. r0, r31
/* 803261EC  40 81 00 0C */	ble lbl_803261F8
/* 803261F0  7F C3 F3 78 */	mr r3, r30
/* 803261F4  4B FA 8B 49 */	bl __dl__FPv
lbl_803261F8:
/* 803261F8  7F C3 F3 78 */	mr r3, r30
/* 803261FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80326200  83 C1 00 08 */	lwz r30, 8(r1)
/* 80326204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80326208  7C 08 03 A6 */	mtlr r0
/* 8032620C  38 21 00 10 */	addi r1, r1, 0x10
/* 80326210  4E 80 00 20 */	blr 
